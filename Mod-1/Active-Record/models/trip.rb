
class Trip
  attr_accessor :tourist, :landmark

  @@all = []

  def initialize(tourist, landmark)
    @tourist = tourist
    @landmark = landmark
    self.class.all << self
  end

  def self.all
    @@all
  end

  

end
