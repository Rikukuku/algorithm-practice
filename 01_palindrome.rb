
# 実装手順のメモ
# 数値のサイズを取得
# 個数が偶数なら中央から最後までの文字列を取得する
# 最初から中央までの数値を取得
# 同じなら回文とする 
# 奇数なら中央 + 1から最後までの文字列を取得する
# 最初から中央までの配列を取得　
# 同じなら回文とする

# 回答
require 'byebug'
def palindrome?(str_num)
  str_size = str_num.size
  center = (str_size / 2).floor
  right_str = (str_size % 2).zero? ? str_num.slice(center, str_size) : str_num.slice(center + 1, str_size)
  left_str = str_num.slice(0, center).reverse
  left_str == right_str
end

1000.times do |i|
  decimal_num = i + 10
  binary_num = decimal_num.to_s(2)
  octal_num = decimal_num.to_s(8)
  return p decimal_num if (palindrome?(decimal_num.to_s) && palindrome?(binary_num) && palindrome?(octal_num))
end

# 回答確認後修正後のコード
def palindrome?(num)
  num.to_s == num.to_s.reverse &&
  num.to_s(2) == num.to_s(2).reverse &&
  num.to_s(8) == num.to_s(8).reverse 
end

i = 10
while true
  i += 1
  return puts i if palindrome?(i)
end