program main!ex-9
write(6,*)'Deg?'
read(5,*)deg
write(6,*)'N?'
read(5,*)max
!deg->rad
rad=3.14159*deg/180.0
x=rad
wa=x
ka=1
do n=1,max
    x=-x*rad*rad
    ka=ka*(2*n)*(2*n+1)
    wa=wa+x/float(ka)
end do
sa=sin(rad)
write(6,*)wa,sa
end program main