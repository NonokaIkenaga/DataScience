program main
integer n,m,n_1,m_1,sum
write(6,*)'n<mを満たす2つの整数n,mを入力してください.'
read(5,*)n,m
if(mod(n,3)==0) THEN
sum=0
max=m
n_1=mod(n,3)
m_1=m/3
do n_2=n_1,m_1
sum=sum+3*n_2
end do
write(6,*)'sum=',sum
ELSE
n_1=n/3+1
m_1=m/3
sum=0
do n_2=n_1,m_1
    sum=sum+3*n_2
end do
write(6,*)'sum=',sum
end if
end program main