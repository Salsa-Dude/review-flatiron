
class Tourist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |tourist|
      tourist.name == name
    end
  end

  def trips
    Trip.all.select do |trip|
      trip.tourist == self
    end
  end

  def landmarks
    self.trips.map do |trip|
      trip.landmark
    end
  end

  def visit_landmark(landmark)
    Trip.new(self, landmark)
  end
end
