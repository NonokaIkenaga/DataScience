program main!ex-8
integer wa
wa=0!変数waの初期値を設定
max=100!最大値maxの値を設定
do n=1,max!doループ(5~7行目)を100回繰り返す．
 wa=wa+n!waにnを加算したものを，新しく上書きする．
end do
kai=max*(1+max)/2
write(6,*)wa,kai
end program main