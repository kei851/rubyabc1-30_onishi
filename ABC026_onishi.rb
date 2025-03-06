# 問題文
# 高橋君は、丸が大好きです。今日も、原点を中心とした大きさの違う円を 
# N 個書きました。

# その円の集合に対し、外側から赤白交互に色を塗ったとき、赤く塗られる部分の面積を出力しなさい。
# #==============================以下回答=============================
n=gets.to_i
r=Array.new(n){ gets.to_i }
r.sort!.reverse!
area=0
for i in 0..n-1
  areai=r[i]**2*Math::PI
  i%2==0 ? area+=areai : area-=areai
end

puts area