# https://atcoder.jp/contests/abc008/tasks/abc008_2

# B - 投票

# とある組織で、リーダーを選ぶ選挙が行われた。

# 組織は 
# N 人の構成員で構成されており、各人は最もリーダーにふさわしい人物の名前を書いた。

# リーダーは、得票数が最も多い人物が選ばれることになっている。

# 得票数が最も多い人物の名前を出力せよ。得票数が最も多い人物が複数いる場合は、そのうちどの名前を出力してもよい。

#==============================以下回答=============================

n = gets.to_i
vote = {}

n.times do
  name = gets.to_s
  if vote.include?(name) then
    vote[name] += 1
  else
    vote[name] = 1
  end
end

puts vote.max_by{ |_, v| v }[0]