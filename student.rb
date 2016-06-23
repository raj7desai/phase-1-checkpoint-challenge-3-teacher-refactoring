

module SchoolMethods
  def offer_high_five
    "High five!"
  end
end


module TeachingStaffMethods
  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end
  
  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end

  def set_performance_rating(rating)
    response = ""
    if rating > self.rating_min
      receive_raise(@target_raise)
      response = "Yay, I'm a great employee!"
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end
end

# SCHOOL CLASS

class School
  attr_reader :age, :phase
  attr_accessor :name

  include SchoolMethods
end

# STUDENT CLASS

class Student < School


  def initialize(options = {})
    @phase = 1
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end

  def set_phase(num)
    response = ""
    if num == @phase
      response += "I'm doing phase #{@phase} again because "
      response += "I put my learning first. I'm gonna rock it!"
    else
      response = "Oooh, phase #{num}. I hope I'm ready!"
    end
    @phase = num
    response
  end

  def learn_stuff
    response = ""
    response += "WHOA! I've never thought of it quite like that before. "
    response += "Now I feel like a genius!"
    response
  end
end

class TeachingStaff < School
  attr_reader :salary, :target_raise, :rating_min
  include TeachingStaffMethods
end

#APPRENTICE TEACHER CLASS

class ApprenticeTeacher < TeachingStaff
  attr_reader 

  def initialize(options={})
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @target_raise = 800
    @phase = 3
    @rating_min = 80
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end


# TEACHER CLASS  

class Teacher < TeachingStaff
  attr_reader :performance_rating

  def initialize(options={})
    @phase = 3
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @target_raise = 1000
    @rating_min = 90
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
  end
end

