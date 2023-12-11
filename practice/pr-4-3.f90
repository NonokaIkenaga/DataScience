program main
implicit none
integer::n,i,j,k,counter,irand,b
real,allocatable::a(:)
real::x
write(6,*)'enter how many numbers you want to line up'
read(5,*)n
write(6,*) 'please enter real numbers'
do i=1,n
    read(5,*)a(i)
end do
!irand=0
!do i=1,n
!a(i)=rand(irand)
!end do
k=n-1
100 continue
counter=0
do i = 1,k
    j=i+1
    if (a(i)>a(j)) then
        x=a(i)
        a(i)=a(j)
        a(j)=x !書き換える
        counter=counter+1
    else
    endif
enddo
if (counter>=1) goto 100
do i = 1,n
    write(6,*)a(i)
enddo
end program main