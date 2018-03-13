require 'rest-client'
require 'json'
require 'pry'




def get_character_movies_from_api(character)
  #make the web request
  all_characters = RestClient.get('http://www.swapi.co/api/people/')
  character_hash = JSON.parse(all_characters)
  character_variable = character_hash['results'].find {|info_hash| info_hash["name"] == character}
  films_array = character_variable["films"]
  films_hash = films_array.collect do |url|
    info = RestClient.get(url)
    sw_hash = JSON.parse(info)
    #sw_hash["title"]
  end
  #films_hash
  #binding.pry
  
  # iterate over the character hash to find the collection of `films` for the given
  #   `character`
  # collect those film API urls, make a web request to each URL to get the info
  #  for that film
  # return value of this method should be collection of info about each film.
  #  i.e. an array of hashes in which each hash reps a given film
  # this collection will be the argument given to `parse_character_movies`
  #  and that method will do some nice presentation stuff: puts out a list
  #  of movies by title. play around with puts out other info about a given film.
end

#show_character_movies("Luke Skywalker")



def parse_character_movies(movies)
# some iteration magic and puts out the movies in a nice list
  movies.collect do |movie_hash|
    movie_list = movie_hash["title"]
    puts movie_list
    end 
end


def show_character_movies(character)
  character_movies = get_character_movies_from_api(character)
  parse_character_movies(character_movies)
end


#show_character_movies("")


## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
