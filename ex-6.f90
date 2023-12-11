program main!ex-6
integer wa
n=1
wa=0
max=100
100 continue
if(n>max)goto 200
wa=wa+n 
n=n+1
goto 100
200 continue
ka=max*(1+max)/2
write(6,*)wa,kai
end program main