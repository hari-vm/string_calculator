class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    nums      = filter_numbers(numbers).map(&:to_i)
    negatives = nums.select { |n| n < 0 }

    raise "negative numbers not allowed #{negatives.join(',')}" unless negatives.empty?

    nums.sum
  end

  private

  def filter_numbers(numbers)
    return numbers.split(/,|\n/) unless numbers.start_with?("//")
        
    delimiter, numbers = numbers.split("\n", 2)
    delimiter          = delimiter[2]

    numbers.split(/#{Regexp.escape(delimiter)}|\n/)
  end
end