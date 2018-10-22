class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.songs.map{|x| x.artist}.uniq.count
  end

  def all_artist_names
    self.songs.map{|x| x.artist.name}.uniq
  end
end
