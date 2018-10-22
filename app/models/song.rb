require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
Genre.find {|y| y.id==Song.all.find {|x| x==x.name=self}.genre_id}.name
  end

  def drake_made_this
self.artist=Artist.new(name: 'Drake')
  end
end
