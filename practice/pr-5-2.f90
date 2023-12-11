program main
implicit none
integer::i,j!do文に
real::a(3,3),aa(3,3),x(3,3)
!A行列
a(1,1)=2
a(1,2)=1
a(1,3)=-2
a(2,1)=-1
a(2,2)=1
a(2,3)=3
a(3,1)=-2
a(3,2)=-3
a(3,3)=2
call gyaku (a,x)
write (6,*)'gyaku'
do i=1,3 !逆行列
    do j=1,3
        write(6,*)x(i,j)
    end do
end do
end program main
! sub3逆行列
subroutine gyaku (a,x)
    implicit none
    integer::i,j!do文に
    real,intent(in)::a(3,3)
    real,intent(out)::x(3,3)
    real::aa(3,3),x1(3,3),det
    det = a(1,1)*(a(2,2)*a(3,3)-a(2,3)*a(3,2))+a(1,2)*(a(2,3)*a(3,1)-a(2,1)*a(3,3))+a(1,3)*(a(2,1)*a(3,2)-a(2,2)*a(3,1))
    !余因子展開
    aa(1,1) = a(2,2)*a(3,3)-a(2,3)*a(3,2)
    aa(1,2) = -a(2,1)*a(3,3)+a(3,1)*a(2,3)
    aa(1,3) = a(2,1)*a(3,2)-a(2,2)*a(3,1)
    aa(2,1) = -a(1,2)*a(3,3)+a(1,3)*a(3,2)
    aa(2,2) = a(1,1)*a(3,3)-a(1,3)*a(3,1)
    aa(2,3) = -a(1,1)*a(3,2)+a(1,2)*a(3,1)
    aa(3,1) = a(1,2)*a(2,3)-a(1,3)*a(2,2)
    aa(3,2) = -a(1,1)*a(2,3)+a(1,3)*a(2,1)
    aa(3,3) = a(1,1)*a(2,2)-a(1,2)*a(2,1)
    do i = 1,3
        do j = 1,3
            x1(i,j) = aa(i,j) / det
        end do
    end do
    do i = 1,3
        do j = 1,3
            x(i,j) = x1(j,i)
        end do
    end do
end subroutine gyaku