require 'json'

male = []
female = []

File.open('people.json', 'r') do |file|

  file.each do |line|            

    JSON.parse(line).each do |item|
      
      if item['gender'] == 'Male' && item['pets'] != nil
        item['pets'].map { |pet| male << pet["name"] if pet["type"] == "Cat" }
      elsif item['gender'] == 'Female' && item['pets'] != nil
        item['pets'].map { |pet| female << pet["name"] if pet["type"] == "Cat" }
      end

    end        
  end
  # p male.compact!
  p male.sort!
  p female.sort!
end