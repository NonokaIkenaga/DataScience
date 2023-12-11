program main
real::a(100)
a(1)=0.0
a(2)=1.0
wa=a(1)+a(2)
th=20000.0
do n=3,100
    a(n)=a(n-1)+a(n-2)
    wa=wa+a(n)
    if(a(n)>=th) exit
end do
write(6,*)'n=',n
write(6,*)'a(n)=',a(n)
write(6,*)'wa=',wa
end program main