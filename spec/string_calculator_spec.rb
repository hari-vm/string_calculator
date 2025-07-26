require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(subject.add("")).to eq(0)
    end

    it 'returns 1 for an empty string' do
      expect(subject.add("1")).to eq(1)
    end

    it 'returns the sum of two comma-separated numbers' do
      expect(subject.add("1,5")).to eq(6)
    end
  end
end