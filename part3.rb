# frozen_string_literal: true

# class for redacting of strings
class RedactString
  def self.redact_string(array_of_strings)
    return false unless check(array_of_strings)

    str_to_mas(array_of_strings)
    delete_c(array_of_strings)
    delete_e(array_of_strings)
    mas_to_str(array_of_strings)
  end

  def self.check(array_of_strings)
    return false if array_of_strings.empty?

    array_of_strings.each do |string|
      return false unless string.match?(/^[a-zA-Z]+( [a-zA-Z]+)*$/)
    end
  end

  def self.str_to_mas(array_of_strings)
    array_of_strings.map! do |string|
      string.split(' ')
    end
  end

  def self.delete_c(array_of_strings)
    array_of_strings.map! { |string| replace_words(string) }
  end

  def self.replace_words(string)
    string.each_with_index.map do |word, index|
      if (index + 1).even? && word[0] == 'c'
        printf "Введите 1, если хотите заменить слово #{word}, 0, чтобы вставить 'qwerty': "
        choice = gets
        input_new_word(choice)
      else
        word
      end
    end
  end

  def self.input_new_word(choice)
    input = 'qwerty'
    if choice.to_i == 1
      printf 'Введите слово: '
      input = gets.chomp
    end
    input
  end

  def self.delete_e(array_of_strings)
    array_of_strings.map! { |string| delete_words(string) }
  end

  def self.delete_words(string)
    string.each_with_index
          .reject { |word, index| (index + 1).even? && word[0] == 'e' }
          .map { |element| element[0] }
  end

  def self.mas_to_str(array_of_strings)
    array_of_strings.map! do |string|
      string.join(' ')
    end
  end
end
