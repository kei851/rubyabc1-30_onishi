# 問題文
# n 時 
# m 分のアナログ時計があります。短針と長針のなす角度のうち小さい方を度数法で求めてください。



# #==============================以下回答=============================
n,m = gets.split.map(&:to_i)
short_angle = n%12*30 + m*0.5
long_angle = m*6
angle = (long_angle - short_angle).abs
puts [angle, 360 - angle].min