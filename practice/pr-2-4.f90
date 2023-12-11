program main!pr-2-4
integer X,H,M,S
write(6,*)'x'
read(5,*)X
H=X/3600
M=(X-3600*H)/60
S=X-3600*H-60*M
write(6,*)'h=',H
write(6,*)'m=',M
write(6,*)'s=',S
end program main
