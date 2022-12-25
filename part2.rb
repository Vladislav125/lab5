# frozen_string_literal: true

# class for converting digits
class ConvertDigit
  def self.count_digit(digit)
    return false unless digit.match?(/^((-?[1-9]\d*)|0)$/)

    digit = digit.to_i.to_s(16)
    [digit, digit.count('0-9'), digit.count('a-f')]
  end
end
