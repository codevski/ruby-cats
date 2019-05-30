require 'json'

task :default => [:run]

desc "need to write some code to consume the json and output a list of all the cats in alphabetical order under a heading of the gender of their owner."

task "run" do
  $LOAD_PATH.unshift(File.dirname(__FILE__), "lib")
  require 'ruby_cats'
  
  # load the data files into strings for you
  people_json = File.read("data/people.json")
  
  # call the app, passing the data as strings containing JSON
  result_json = RubyCats.call(people_json)
  result_json.to_json

  # # # pretty print the output
  puts "Alphabetical order CATS under owner gender:"
  puts sprintf("-") * 20
  puts sprintf("%-10s", "Male")
  puts sprintf("-") * 20
  result_json[:male].each do |pet|
    puts sprintf("%-10s", pet)
  end
  puts sprintf("-") * 20
  puts sprintf("%-10s","Female")
  puts sprintf("-") * 20
  result_json[:female].each do |pet|
    puts sprintf("%-10s", pet)
  end
end