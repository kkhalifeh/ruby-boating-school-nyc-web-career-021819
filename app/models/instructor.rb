class Instructor

  @@all = []

  attr_accessor :instructor_name
  attr_reader :test_name

  def initialize(instructor_name)
    @instructor_name = instructor_name
    @@all << self
  end

  def pass_student(student, test)
    if BoatingTest.all.find { |tests| tests.test_name == test  }
      found_test = BoatingTest.all.find { |tests| tests.test_name == test  }
      if found_test.first_name == student
        found_test.test_status = "passed"
        return found_test
      else
        new_test = BoatingTest.new(student, found_test.test_name, "passed", self)
      end
      return new_test
    else
    # binding.pry
    new_test = BoatingTest.new(student, test, "passed", self)
    return new_test
    end
    # binding.pry
  end

  def fail_student(student, test)
    if BoatingTest.all.find { |tests| tests.test_name == test  }
      found_test = BoatingTest.all.find { |tests| tests.test_name == test  }
      if found_test.first_name == student
        found_test.test_status = "failed"
        return found_test
      else
        new_test = BoatingTest.new(student, found_test.test_name, "failed", self)
      end
      return new_test
    else
    # binding.pry
    new_test = BoatingTest.new(student, test, "failed", self)
    return new_test
    end
  end




end
