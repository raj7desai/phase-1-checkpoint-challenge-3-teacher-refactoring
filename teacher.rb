require_relative 'student'

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

# TEACHING STAFF CLASS

class TeachingStaff < School
  attr_reader :salary, :target_raise, :rating_min
  include TeachingStaffMethods
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


