# require_relative 'item'
# require_relative 'music_album'
# require_relative 'data'
# require_relative 'genre'

# class App
#   attr_reader :music_album, :genre

#   def initialize
#     @music_album = Data.load_music_albums
#     @genre = Data.load_genre
#   end

#   def add_music_album
#     puts 'What is the name of your album'
#     name = gets.chomp
#     puts "What is the genre of you album"
#     gnr = gets.chomp
#     puts 'Is your album on spottify [Y/N]'
#     on_spotify = false
#     is_on_spotify = gets.chomp
#     on_spotify = true if is_on_spotify == 'Y'
#     @music_album << MusicAlbum.new(name, on_spotify)
#     @genre << Genre.new(gnr)
#     puts 'Album created!'
#     data = Data.new
#     data.collect_albums(@music_album)
#     data.collect_genre(@genre)
#     menu
#   end

#   def add_genre
#   puts "what is the name of this genre"

#   menu
#   end

#   def list_all_music_albums
#     @music_album.each do |album|
#       puts "Album name: #{album.name}, On_spotify: #{album.on_spotify}"
#     end
#     menu
#   end

#   def run
#     puts 'Welcome to catalog app'
#     menu
#   end

#   def menu
#     puts
#     puts 'Please select an option by entering a number:'
#     puts '1 - List all books'
#     puts '2 - List all music albums'
#     puts '3 - List all games'
#     puts '4 - List all genres'
#     puts '5 - List all labels'
#     puts '6 - List all authors'
#     puts '7 - Add a book'
#     puts '8 - Add a music album'
#     puts '9 - Add a game'
#     puts '10 - Exit'
#     user_input
#   end
# end
# puts
#
# def selected_option(input)
#   case input
#   when '2'
#     list_all_music_albums
#   when '3'
#     list_all_games
#   when '4'
#     list_all_genres
#   when '5'
#     list_all_labels
#   when '6'
#     list_all_authors
#   when '7'
#     add_book
#   when '8'
#     add_music_album
#   when '9'
#     add_game
#   when '10'
#     save_data
#     puts 'Thank you for using this app!'
#     exit
#   end
# end
# # def user_input
#   input = gets.chomp
#   input_is_valid?(input)
# end

# def input_is_valid?(input)
#   if %w[1 2 3 4 5 6 7 8 9 10].include?(input)
#     selected_option input
#   else
#     puts "#{input} isn't in the list! Try again"
#     menu
#   end
# end

require_relative './app'

# def main
#   app = App.new
#   data = Data.new
#   data.create_files
#   app.run
# end
# main

def main
  app = App.new
  app.run
end
main
