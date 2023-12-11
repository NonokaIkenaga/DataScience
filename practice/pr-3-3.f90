program main
integer sum_1,sum_2
write(6,*)'mの値を入力してください.'
read(5,*)m
max=m
sum_1=0
sum_2=0
do n=1,max
    sum_1=sum_1+n*n
    sum_2=sum_2+n*n*n
end do
write(6,*)'x=',sum_1
write(6,*)'y=',sum_2
end program main