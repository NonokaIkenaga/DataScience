module modu
    implicit none
    real a,b,c
end module modu
!---main-------------
program main
use modu
implicit none
integer n
real x1,x2,d,s
write(6,*)'n?'
read(5,*)n
a=-2.0
b=-3.0
c=2.0
call kon(x1,x2,d)
if(d>=0.0)call trap(n,x1,x2,s)
write(6,*)'D=',d,'S=',s
end program main
!---sub-1------------
subroutine kon(x1,x2,d)
use modu
implicit none
real x1,x2,d,r,s
d=b*b-4.0*a*c
if(d>=0.0)then
    r=-b/(2.0*a)
    s=sqrt(d)/(2.0*a)
    x1=r-abs(s)
    x2=r+abs(s)
end if
end subroutine kon
!---sub-2------------
subroutine trap(n,xs,xe,s)
use modu
implicit none
integer n,k
real xs,xe,dx,s,x1,x2,y1,y2
dx=(xe-xs)/float(n)
s=0.0
do k=1,n
    x1=xs+dx*float(k-1)
    x2=xs+dx*float(k)
    y1=a*x1**2+b*x1+c
    y2=a*x2**2+b*x2+c
    s=s+0.5*(y1+y2)
end do
s=dx*s
end subroutine trap