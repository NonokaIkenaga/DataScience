program main
implicit none
integer::n
integer,allocatable::a(:)
integer::i,j,k,l,wa
real::b
write(6,*)'Please enter n' !入力
read(5,*)n
allocate(a(n))
do i = 1,n!aに整数を代入
a(i) = i
enddo
a(1) = 0
j = 2
b = float(n)**0.5 !nの平方根
200 continue
if (float(j) <= b) then !素数の判別
k = 2
if (a(j) > 1 .and. a(j) <= n) then
    300 continue
    l = k * j
    if (l <= n) then
        a(l) = 0
    else
        goto 100
    endif
    k = k + 1
        goto 300
endif
    100 continue
j = j + 1
    goto 200
else
endif
wa = 0
do i = 1,n !合計
wa = wa + a(i)
enddo
write(6,*) wa !出力
end program main