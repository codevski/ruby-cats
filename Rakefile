require 'rest-client'
require 'json'

task :default => [:run]

desc "need to write some code to consume the json and output a list of all the cats in alphabetical order under a heading of the gender of their owner."

task "run" do
  $LOAD_PATH.unshift(File.dirname(__FILE__), "lib")
  require 'ruby_cats'
  
  # load the data files into strings for you
  url = 'http://agl-developer-test.azurewebsites.net/people.json'

  # If URL has issues use local file for this code to work
  begin
    response = RestClient.get(url)
   rescue RestClient::ExceptionWithResponse => err
    response = File.read("data/people.json")
   end

  # call the app, passing the data as strings containing JSON
  result_json = RubyCats.call(response)

  # # # pretty printing the output
  puts "Alphabetical order CATS under owner gender:"
  puts sprintf("-") * 40
  puts sprintf("%-20s", "Male")
  puts sprintf("-") * 40
  result_json[:male].each {|male| puts "%-20s" % [male.name]}

  puts sprintf("-") * 40
  puts sprintf("%-20s", "Female")
  puts sprintf("-") * 40
  result_json[:female].each {|female| puts "%-20s" % [female.name]}

end