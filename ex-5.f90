program main!ex-5
real nu!
d=0.05
nu=1.5e-5
r1=1.0
r2=400.0
r3=3.0e5
r4=2.0e6
write(6,*)'U'
read(5,*)u
re=u*d/nu
write(6,*)'Re=',re
if(re,r1)then
 cd=24.0/re
else if(re>r1.and.re<=r2)then
 cd=24.0/re**0.646
else if(re>r2.and.re<=r3)then
 cd=0.5
else if(re>r3.and.re<=r4)then
 cd=3.66e-4*re**0.4275
else
 cd=0.18
end if
write(6,*)'CD=',cd
end program main