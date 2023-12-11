program main!pr-3-1
write(6,*)'a,b,c'
read(5,*)A,B,C
if (A<B+C.AND.B<A+C.AND.C<A+B)THEN
    s1=(A+B+C)/2
    s=SQRT(s1*(s1-A)*(s1-B)*(s1-C))
    write(6,*)'S=',s
ELSE
write(6,*)'その条件では三角形は成立しません'
end if
end program main