class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
Song.all.select{|x| x.genre==self}.size
  end

  def artist_count
Song.all.select {|x| x.genre==self}.map {|y| y.artist}.uniq.size
  end

  def all_artist_names
    Artist.all.map {|x| x.name}
    # return an array of strings containing every musician's name
  end
end
