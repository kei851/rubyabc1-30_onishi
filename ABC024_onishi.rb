# 問題文
# ABCマーケットは高橋王国で最も人気なスーパーマーケットです。 入り口は自動ドアになっています。

# この自動ドアは人が前を通りかかると自動で開き、そこから 
# T 秒後まで開き続け、その後自動的に閉じます。 ドアが開いている状態で新たに人が前を通りかかると、通りかかった時刻のさらに 
# T 秒後まで開き続ける時間が延長されます。

# 今日はのべ 
# N 人の客が自動ドアの前を通りかかりました。 
# i 番目の人が通りかかった時刻はABCマーケットが開店してから 
# A 
# i
# ​
#   秒経った時刻です。

# 今日、この自動ドアが開いていた合計秒数を求めてください。

# #==============================以下回答=============================

n,t = gets.split.map(&:to_i)
fullTime = n*t
beforeTime = gets.to_i
(n-1).times do
  currentTime = gets.to_i
  if currentTime < beforeTime+t
    fullTime -= beforeTime+t-currentTime
  end
  beforeTime=currentTime
end

puts fullTime