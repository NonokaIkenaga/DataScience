program main
implicit none
integer n,i,b
real a
real::c(6)
integer::d(6)
write(6,*)'Please enter n' !入力
read(5,*) n
do i = 1,6 !乱数の範囲
    c(i) = float(i)/6
enddo
b=0
d(1)=0
d(2)=0
d(3)=0
d(4)=0
d(5)=0
d(6)=0
do i = 1,n !さいころの値
    a = rand(b)
    if (a>=0.and.a<c(1)) then
        d(1) = d(1) + 1
    else if(a>=c(1).and.a<c(2)) then
        d(2) = d(2) + 1
    else if(a>=c(2).and.a<c(3)) then
        d(3) = d(3) + 1
    else if(a>=c(3).and.a<c(4)) then
        d(4) = d(4) + 1
    else if(a>=c(4).and.a<c(5)) then
        d(5) = d(5) + 1
    else if(a>=c(5).and.a<c(6)) then
        d(6) = d(6) + 1
    else
    endif
enddo
do i = 1,6
    write(6,*)i,'is',d(i),'times',float(d(i))*100/n,'%'
enddo
end program main