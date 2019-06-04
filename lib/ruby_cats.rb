require 'json'
require 'gender'
require 'cat'
require 'helper'

include Helper

class RubyCats

  def self.call(people)
    # Parse all files
    people    = JSON.parse(people)

    male      = []
    female    = []
    pets      = []

    # Create Owner Genders
    male_owner = Gender.new("Male")
    female_owner = Gender.new("Female")

    # Find cats, create Cat object and append them to Gender Owner object
    people.each do |item|
      if item['gender'] == 'Male' && item['pets'] != nil
        item['pets'].map { |pet| male_owner.petname << Cat.new(pet["name"]) if pet["type"] == "Cat" }
      elsif item['gender'] == 'Female' && item['pets'] != nil
        item['pets'].map { |pet| female_owner.petname << Cat.new(pet["name"]) if pet["type"] == "Cat" }
      end
    end

    # Sort the pets
    male_owner.sort_pet
    female_owner.sort_pet

    # construct hash
    pets = {"male": convert_to_string(male_owner.petname), "female": convert_to_string(female_owner.petname)}
  
  end  
end