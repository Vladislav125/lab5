# frozen_string_literal: true

# class for solving cosinus functions
class CountCos
  def self.count_cos(variable)
    return false unless variable.match?(/^((-?[1-9]\d*)|0|(-?(0|\d+)[.]\d+))$/)

    new_var = variable.to_f
    return false if new_var == 2 || new_var.zero?

    Math.cos(new_var**2 / ((new_var - 2) * 3 * new_var))
  end
end
