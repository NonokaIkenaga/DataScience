program main!ex-4-1
write(6,*)'a,b,c'
read(5,*)a,b,c
d=b*b-4.0*a*c!
write(6,*)'D=',d
if(d>=0.0) THEN
x1=(-b+sqrt(d))/(2.0*a)
x2=(-b-sqrt(d))/(2.0*a)!解の計算(sqrt(d):dの平方根を計算する組み込み関数)
write(6,*)'x1=',x1
write(6,*)'x2=',x2
ELSE
write(6,*)'解なし'
end if
end program main