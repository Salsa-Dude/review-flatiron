
class Landmark
  attr_accessor :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_city(city)
    self.all.select do |landmark|
      landmark.city == city
    end
  end

  def trips
    Trip.all.select do |trip|
      trip.landmark == self
    end
  end

  def tourists
    self.trips.map do |trip|
      trip.tourist
    end
  end

  def trip_count
    self.trips.length
  end

  def self.most_popular
    sorted_all = self.all.sort do |a,b|
      a.trip_count <=> b.trip_count
    end
    sorted_all
  end

end
