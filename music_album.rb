require_relative 'item'

class MusicAlbum < Item
  attr_accessor :name, :on_spotify

  def initialize(name, on_spotify)
    super(genre, author, label, publish_date)
    @name = name
    @on_spotify = on_spotify
    @archived = archived
  end

  def can_be_archived?
    return true if @archived || @on_spotify == true
    return false unless @archived
  end
end

musicAlbum = MusicAlbum.new('name album', false)
puts musicAlbum.name


