require_relative 'teacher'

#APPRENTICE TEACHER CLASS

class ApprenticeTeacher < TeachingStaff
  attr_reader 

  def initialize(options={})
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @target_raise = 800
    @phase = 3
    @rating_min = 80
    @response = "Listen, class, this is how everything works. *drops crazy knowledge bomb* ... You're welcome."
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
