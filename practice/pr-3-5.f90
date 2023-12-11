program main
write(6,*)'nの値を入力してください'
read(5,*)max
x_1=1
y_1=2
sum_x=1
sum_y=0.5000
do n=1,max-1
    x_1=-x_1*(2*n+1)
    sum_x=sum_x+1/x_1
    y_1=-y_1*(2*n)
    sum_y=sum_y+1/y_1
end do
write(6,*)'x=',sum_x
write(6,*)'y=',sum_y
end program main