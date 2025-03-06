# https://atcoder.jp/contests/abc003/tasks/abc003_2

# B - AtCoderトランプ

# 問題文
# AtCoder社では 
# 1 人で行うトランプを使ったゲームが流行っています。
# AtCoder社特製トランプでは、各カードにアルファベット小文字 
# 1 文字（a～z）、または@の文字が書かれています。

# ゲームは以下の手順で行います。
# カードを同じ枚数ずつ 
# 2 列に並べて文字列を 
# 2 つ作ります。
# @のカードは、それぞれa,t,c,o,d,e,rのどれかのカードと置き換えます。
# 2 つの列が指し示す文字列が同じであれば勝ち、同じでなければ負けです。
# 手順 1. で並べられた 
# 2 つの列が指し示す2つの文字列与えられるので、適切に@を置き換えて、このゲームで勝つことができるかどうかを判定するプログラムを書いてください。

#==============================以下回答=============================

s = gets.chomp.chars
t = gets.chomp.chars
yesFrag = 1
for i in 0..s.length-1 do
  if s[i]!=t[i] 
    if s[i] != "@" && t[i] != "@"
      yesFrag = 0
    elsif "atcoder".include?(s[i]) || "atcoder".include?(t[i])
    else
      yesFrag = 0
    end
  end
end
puts yesFrag==1 ? "You can win" : "You will lose"