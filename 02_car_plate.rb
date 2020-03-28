# 実装のメモ
# 入力された数値を逆にする
# 0がある数値は無視する
# oeratorに-と+と/は不要(条件を満たせないため)
require "byebug"

def create_reverse?(num)
  operators = ['*', '']
  answer = nil
  val = ''
  num_str = num.to_s
  target = num_str.reverse.to_i
  operators.each do |i|
    operators.each do |j|
      operators.each do |k|
        val = num_str[0] + i + num_str[1] + j + num_str[2] + k + num_str[3]
        if (val.length > 4) && (target == eval(val))
          answer = num
        end
      end
    end
  end
  !answer.nil?
end

(1000...10_000).each do |i|
  next if i.to_s.include?('0')

  p i if create_reverse?(i)
end