# frozen_string_literal: true

require_relative 'part3'

RSpec.describe RedactString do
  describe 'class for testing part2.rb' do
    let(:correct_word) { (1..rand(2..26)).map { ('a'..'z').to_a.sample }.join }
    let(:word_to_delete) { "e#{(1..rand(2..25)).map { ('a'..'z').to_a.sample }.join}" }
    let(:word_to_replace) { "c#{(1..rand(2..25)).map { ('a'..'z').to_a.sample }.join}" }
    let(:example_sentence) { correct_word.to_s }
    let(:original_sentence) { "#{correct_word} #{word_to_replace} #{correct_word} #{word_to_delete}" }
    let(:expected_sentence) { "#{correct_word} qwerty #{correct_word}" }

    it 'should be false' do
      expect(described_class.redact_string('')).to eq(false)
    end

    it 'should be good value' do
      expect(RedactString.redact_string([example_sentence,
                                         original_sentence])).to eq([example_sentence, expected_sentence])
    end
  end
end
