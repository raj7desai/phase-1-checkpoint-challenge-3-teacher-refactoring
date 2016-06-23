require_relative 'student'
require_relative 'teacher'

# module TeachingStaffMethods
#   def set_phase(num)
#     @phase = num
#     "Cool, I've always wanted to teach phase #{num}!"
#   end
  
#   def salary=(new_salary)
#     puts "This better be good!"
#     @salary = new_salary
#   end

#   def receive_raise(raise)
#     @salary += raise
#   end

#   def set_performance_rating(rating)
#     response = ""
#     if rating > self.rating_min
#       receive_raise(@target_raise)
#       response = "Yay, I'm a great employee!"
#     else
#       response += "Oh, well -- thanks to this actionable, specific, and kind "
#       response += "feedback, I'll do better next time."
#     end
#     response
#   end
# end



class TeachingStaff < School
  attr_reader :salary, :target_raise, :rating_min
  include TeachingStaffMethods
end



class ApprenticeTeacher < TeachingStaff
  attr_reader 

  def initialize(options={})
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @target_raise = 800
    @phase = 3
    @rating_min = 80
  end

  # def offer_high_five
  #   "High five!"
  # end

  # def set_phase(num)
  #   @phase = num
  #   "Cool, I've always wanted to teach phase #{num}!"
  # end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end

  # def salary=(new_salary)
  #   puts "This better be good!"
  #   @salary = new_salary
  # end

  # def receive_raise(raise)
  #   @salary += raise
  # end

  # def set_performance_rating(rating)
  #   response = ""
  #   if rating > 80
  #     response = "Yay, I'm a great employee!"
  #     receive_raise(@target_raise)
  #   else
  #     response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
  #   end
  #   response
  # end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
