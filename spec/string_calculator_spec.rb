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

    it 'returns the sum of multiple comma-separated numbers' do
      expect(subject.add("1,2,3,4")).to eq(10)
    end

    it 'handles newline as a delimiter' do
      expect(subject.add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimiters' do
      expect(subject.add("//;\n1;2")).to eq(3)
    end

    it 'raises exception for negative numbers' do
      expect { subject.add("1,-2,3,-5") }.to raise_error("negative numbers not allowed -2,-5")
    end
  end
end