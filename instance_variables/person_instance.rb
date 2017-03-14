# read this stackflow section to understand getters and setters
# http://stackoverflow.com/questions/4370960/what-is-attr-accessor-in-ruby/32598087

class Person  
  def initialize(name)
    @name = name
  end

  # # Task 1: getter general method
  # def name
  #   @name
  # end

  # # Task 2: Getter method
  #   attr_reader:name
    
  # # Task 3: setter general method
  # def name=(val)
  #   @name=val
  # end

  # # Task 4: setter method
  # attr_writer:name

  # Task 5: getter and setter method
  attr_accessor:name
end

p = Person.new('L. Ron')
puts p.name