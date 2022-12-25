# frozen_string_literal: true

require_relative 'part2'
printf 'Введите значение числа в десятичной записи: '
input_value = gets
result = ConvertDigit.count_digit(input_value)
if result == false
  puts 'Введено некорректное значение'
else
  puts "Шестнадцатеричная запись введённого числа: #{result[0]}," \
      " содержит цифр: #{result[1]}, и букв: " \
      "#{result[2]}"
end
