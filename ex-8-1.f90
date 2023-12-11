program main!ex-8
integer wa
wa=0!変数waの初期値を設定
max=100!最大値maxの値を設定
do n=2,max,2!doループ(5~7行目)を100回繰り返す．
 wa=wa+n!waにnを加算したものを，新しく上書きする．
end do
write(6,*)wa
end program main