
# What defines an integer as a prime number? Research algorithms for how to determine if a number is prime.
# How do you create a range of numbers? How do you turn a range into an array so that it can be iterated over?

# Do not use any other Ruby library. You must build a method that can verify whether a number is prime.
# Don't require 'math' and just piggyback off their implementation of prime number.

def prime?(number)
  if number >= 2
    (2...number - 1).to_a.all? do |x|
      number % x != 0
    end
  else
    return false
  end
end

p prime?(17)
