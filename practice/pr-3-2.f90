program main!pr-3-2
integer sum 
write(6,*)'nの値を入力してください.'
read(5,*)n
sum=1
max=n
do n=1,max
sum=sum+n
end do
write(6,*)sum
end program main