
require 'pry'

animals = {"sugar glider"=>"Australia","aye-aye"=> "Madagascar","red-footed tortoise"=>"Panama","kangaroo"=> "Australia","tomato frog"=>"Madagascar","koala"=>"Australia"}

# This method should take an undefined number of arguments, using the splat operator,
# and return an array with every key from the hash whose value matches the value(s) given as an argument.

class Hash
  def keys_of(*args)
    array = []
    binding.pry
    self.each do |key, value|
      if args.include?(value)
        array << key
      end
    end
    array
  end
end

p animals.keys_of('Australia', 'Panama')
