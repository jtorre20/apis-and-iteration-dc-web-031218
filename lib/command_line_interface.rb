def welcome
  # puts out a welcome message here!
  puts "May the code be with you"
end

# def character_names
#   all_characters = RestClient.get('http://www.swapi.co/api/people/')
#   character_hash = JSON.parse(all_characters)
#   #character_hash["results"].find {|info_hash| info_hash["name"].downcase.include?()}
# end

def get_character_from_user
  # use gets to capture the user's input. This method should return that input, downcased.
  puts "please enter a character"
  character = gets.chomp.downcase
  character 
end
