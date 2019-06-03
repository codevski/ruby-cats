require 'json'

class RubyCats

  def self.call(people)
    # Parse all files
    people    = JSON.parse(people)

    male      = []
    female    = []
    pets      = []

    people.each do |item|
      if item['gender'] == 'Male' && item['pets'] != nil
        item['pets'].map { |pet| male << pet["name"] if pet["type"] == "Cat" }
      elsif item['gender'] == 'Female' && item['pets'] != nil
        item['pets'].map { |pet| female << pet["name"] if pet["type"] == "Cat" }
      end
    end

    # Sort and save to current arrays
    male.sort!
    female.sort!

    pets = {"male": male, "female": female}
  end
    
end