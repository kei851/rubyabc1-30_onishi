# https://atcoder.jp/contests/abc017/tasks/abc017_2

# B - choku語

# 問題文
# 高橋君は、ある日不思議な生物を見た。

# その生物は choku 語という言語を用いていることがわかった。

# 文字列 
# S が以下の条件を満たしているときに 
# S は choku 語であると定義する。

# 文字列 
# S が空文字列であるとき。
# 文字列 
# S が、choku 語である文字列 T の末尾に ch をつけた文字列であるとき。
# 文字列 
# S が、choku 語である文字列 T の末尾に o をつけた文字列であるとき。
# 文字列 
# S が、choku 語である文字列 T の末尾に k をつけた文字列であるとき。
# 文字列 
# S が、choku 語である文字列 T の末尾に u をつけた文字列であるとき。
# choku 語の理解を深めるため、与えられた文字列が choku 語であるかを判定するプログラムを作成することにした。

#==============================以下回答=============================

s=gets.chomp.chars
choku=["o", "k", "u"]
i=0

while i < s.length
  if s[i]=="c" 
    if i+1 >= s.length || s[i+1]!="h"
      puts "NO"
      exit
    else
      i+=2
    end
  elsif choku.include?(s[i])
    i+=1
  else
    puts "NO"
    exit
  end
end
puts "YES"