module modu
implicit none
real::a(3,3),b(3,3),x(3,3),s(3,3)
integer i,j,k
end module modu
!main
program main
use modu
implicit none
a(1,1)=2
a(1,2)=1
a(1,3)=-2
a(2,1)=-1
a(2,2)=1
a(2,3)=3
a(3,1)=-2
a(3,2)=-3
a(3,3)=2
b(1,1)=1
b(1,2)=2
b(1,3)=3
b(2,1)=1
b(2,2)=2
b(2,3)=3
b(3,1)=1
b(3,2)=2
b(3,3)=3
call wa(a,b,x)
write(6,*)'wa'
do i=1,3
    do j=1,3
        write(6,*)x(i,j)
    end do
end do
call seki(a,b,s)
write(6,*)'seki'
do i=1,3 
    do j=1,3
        write(6,*)s(i,j)
    end do
end do
end program main
!subroutine_wa
subroutine wa(v,l,w)
use modu
implicit none
real::v(3,3),l(3,3),w(3,3)
do i=1,3
    do j=1,3
        w(i,j)=v(i,j)+l(i,j)
    end do
end do
end subroutine wa
!subroutine_seki
subroutine seki(m,n,t)
use modu
implicit none
real::m(3,3),n(3,3),t(3,3)
do i=1,3 
    do j=1,3
        t(i,j) = (0,0)
        do k=1,3
            t(i,j) = t(i,j)+m(i,k)*n(k,j)
        end do
    end do
end do
end subroutine seki