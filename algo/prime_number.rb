require 'rspec'
# Use RSpec to test the following exercise! You may wish to wrap the methods below in a class to help facilitate this.

# First, implement the is_prime? method below. It should accept a number as an argument and return
# true if the number is prime and false if it is not. A prime number is a number that is only
# divisible by itself and the number 1.
class Prime
  def is_prime?(number)
    number.odd?
  end
  # Second, implement the highest_prime_number_under method below. It should accept a number as
  # an argument and return the highest prime number under that number. For example, the
  # highest prime number under 10 is 7.
  def highest_prime_number_under(number)
    if number.even?
      return number - 1
    else
      return number - 2
    end
  end
end

RSpec.describe Prime do
  describe "#is_prime?" do
    it "returns true when prime number is entered" do
      prime = Prime.new
      result = prime.is_prime?(5)
      expect(result).to eql(true)
    end
  end

  describe "#highest_prime_number_under" do
    it "returns highest odd number under odd number given" do
      prime = Prime.new
      result = prime.highest_prime_number_under(25)
      expect(result).to eql(23)
    end
  end

  describe "#highest_prime_number_under" do
    it "returns highest odd number under even number given" do
      prime = Prime.new
      result = prime.highest_prime_number_under(20)
      expect(result).to eql(19)
    end
  end
end
