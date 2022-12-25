# frozen_string_literal: true

require_relative 'part1'

printf 'Введите значение переменной для вычисления значения функции: '
input_value = gets
result = CountCos.count_cos(input_value)
if result == false
  puts 'Введено некорректное значение'
else
  puts "Вычисленное по формуле значение: #{result}"
end
