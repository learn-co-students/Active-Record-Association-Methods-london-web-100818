class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    Song.all.find { |x| x.artist==self}.genre
  end

  def song_count
Song.all.map {|x| x.artist}.count(self)
  end

  def genre_count
    Song.all.select {|x| x.artist==self}.map{|y| y.genre}.uniq.size

  end
end
