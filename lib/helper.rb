module Helper

  def convert_to_string(pets)
    owners_pets ||= []
    pets.each {|pet| owners_pets << pet.name }
  end

end