program main!ex-8
integer wa
real wa_true
wa=0.0!変数waの初期値を設定
max=100!最大値maxの値を設定
do n=1,max!doループ(5~7行目)を100回繰り返す．
 s=n*0.1
 wa=wa+s!waにnを加算したものを，新しく上書きする．
end do
wa_true=wa
write(6,*)wa_true
end program main