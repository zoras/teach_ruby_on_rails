module Subject
 class Course
  def info
    puts "hi"
  end
  
  def intro
    puts "RAILS SUBJECT"
  end
  def self.who
    puts "ROR from Subject module"
  end
 end
end

class Course
  def self.who
    puts "ROR"
  end
end

class Course
  def self.who
    puts "ruby"
  end
end

Course.who
Subject::Course.who

class Teacher
  include Subject
  extend Subject

  attr_accessor :name, :subject

  def initialize(name, subject)
    @name = name
    @subject = subject
  end
end

#Teacher.new('K.P. sir', 'Nepali').info
#Teacher.intro
