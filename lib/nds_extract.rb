require 'pp'
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

 def directors_totals(nds)
  all_directors = nds
  
  grand_totals = {}
  
  total_movie_gross = 0
  directors = 0 
  while directors < all_directors.length do
    movie_counter = 0 
    while movie_counter < all_directors[directors].length do 
      title = 0 
      while title < all_directors[directors][:movies].length do 
        total_movie_gross += all_directors[directors][movie_counter][title][:worldwide_gross] += 1 
        title += 1 
      end
      movie_counter += 1 
    end
    grand_totals[all_directors[directors][:name]] = total_movie_gross
    directors += 1 
  end
  return grand_totals
end



