program main
real::a(20)
a(1)=0.0
a(2)=1.0
wa=a(1)+a(2)
do n=3,20
    a(n)=a(n-1)+a(n-2)
    wa=wa+a(n)
end do
write(6,*)'wa=',wa
end program main