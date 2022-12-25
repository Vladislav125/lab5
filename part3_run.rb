# frozen_string_literal: true

require_relative 'part3'
puts 'Введите массив строк. Чтобы завершить ввод строк, введите \\.' \
"Чётные лова, начинающиеся на 'c', необходимо будет заменить." \
"Чётные слова, начинающиеся на 'e', будут удалены."
input_value = []
loop do
  printf 'Введите строку: '
  str = gets.chomp
  break if str == '\\'

  input_value << str
end

result = RedactString.redact_string(input_value)
if result == false
  puts 'Введено некорректное значение'
else
  puts 'Результирующий массив:'
  result.each do |item|
    puts item
  end
end
