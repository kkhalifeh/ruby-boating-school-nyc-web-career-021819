class BoatingTest

  attr_accessor :test_name, :test_status, :first_name, :instructor_name

  @@all = []

  def initialize(first_name, test_name, test_status, instructor_name)
    @test_name = test_name
    @test_status = test_status
    @first_name = first_name
    @instructor_name = instructor_name
    @@all << self
  end

  def self.all
    @@all
  end


end
