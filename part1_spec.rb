# frozen_string_literal: true

require_relative 'part1'

RSpec.describe CountCos do
  describe 'class for testing part1.rb' do
    it 'should be false' do
      expect(described_class.count_cos('0')).to eq(false)
      expect(described_class.count_cos('2')).to eq(false)
      expect(described_class.count_cos('klo')).to eq(false)
    end

    it 'should be good value' do
      expect(described_class.count_cos('56')).to eq(0.940845595959976)
      expect(described_class.count_cos('228')).to eq(0.943987660287973)
      expect(described_class.count_cos('0.0000001')).to eq(0.9999999999999999)
    end
  end
end
