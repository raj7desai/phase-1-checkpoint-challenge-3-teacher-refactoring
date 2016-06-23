# require_relative ''

module SchoolMethods
  def offer_high_five
    "High five!"
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
      response += "I'm doing phase #{@phase} again because I put my learning first. I'm gonna rock it!"
    else
      response = "Oooh, phase #{num}. I hope I'm ready!"
    end
    @phase = num
    response
  end

  def learn_stuff
    response = "WHOA! I've never thought of it quite like that before. Now I feel like a genius!"
    response
  end
end




