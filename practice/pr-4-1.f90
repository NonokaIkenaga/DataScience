program main
real:: a(3,3),b(3,3),w(3,3)
do i=1,3
    do j=1,3
        write(6,*)'A(',i,j,')=','B(',i,j,')='
        read(5,*)a(i,j),b(i,j)
    end do
end do
do i=1,3
    do j =1,3
    w(i,j)=0
    end do !initializing
    do j=1,3
        w(i,1)=a(i,j)*b(1,j)+w(i,1)
    end do
    do j=1,3
        w(i,2)=a(i,j)*b(2,j)+w(i,2)
    end do
    do j=1,3
        w(i,3)=a(i,j)*b(3,j)+w(i,3)
    end do
    write(6,10)(w(i,j),j=1,3)
end do
10 format (1x,3(2x,f5.2))
end program main