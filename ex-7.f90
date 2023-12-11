program main!ex-7
write(6,*)'A?','B?','MAX?'
read(5,*)a,b,max
do n=1,max
    a=a/b
end do
write(6,*)'A=',a
end program main