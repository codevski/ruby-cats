class Gender

  attr_accessor :type, :petname

  def initialize (type)
    @type = type
    @petname = []
  end

  # Sort array alphabetically 
  def sort_pet
   @petname = @petname.sort_by(&:name)
  end
end