class Student

  @@all = []
  attr_accessor :first_name

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor_name)
    new_test = BoatingTest.new(self, test_name, test_status, instructor_name)
    new_test
  end

  def self.find_student(first_name)
    self.all.find {|students| students.first_name == first_name}
  end

  def grade_percentage(student)
    number_of_tests = BoatingTest.all.count {|tests| tests.first_name == self}
    passed_tests = BoatingTest.all.count {|tests| tests.first_name == self && tests.test_status == "passed"}
    grade_percentage = (passed_tests.to_f / number_of_tests.to_f) * 100
    return grade_percentage.round(2)
    # binding.pry
  end

end
