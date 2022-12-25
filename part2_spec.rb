# frozen_string_literal: true

require_relative 'part2'

RSpec.describe ConvertDigit do
  describe 'class for testing part2.rb' do
    it 'should be false' do
      expect(described_class.count_digit('0123')).to eq(false)
      expect(described_class.count_digit('point')).to eq(false)
      expect(described_class.count_digit('4jkhk')).to eq(false)
      expect(described_class.count_digit('-rt67.89')).to eq(false)
    end

    it 'should be good value' do
      expect(described_class.count_digit('1000')).to eq(['3e8', 2, 1])
      expect(described_class.count_digit('-340')).to eq(['-154', 3, 0])
      expect(described_class.count_digit('0')).to eq(['0', 1, 0])
    end
  end
end
