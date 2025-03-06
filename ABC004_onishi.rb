# https://atcoder.jp/contests/abc004/tasks/abc004_2

# B - 回転

# 問題文
# 高橋君は 
# 4 x 
# 4 マスの盤面を見つけました。
# 各マスには .ox のいずれかの文字が書かれています。
# 彼はこの盤面を回転させた後、どういった状態になるのか気になりました。
# 盤面を正面から見たときの状態が与えられるので、
# 180 度回転させた後の盤面を出力してください。

#==============================以下回答=============================

a= gets.chomp
b= gets.chomp
c= gets.chomp
d= gets.chomp
puts d.reverse
puts c.reverse
puts b.reverse
puts a.reverse