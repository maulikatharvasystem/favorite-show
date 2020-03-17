class TvShow < ApplicationRecord
  belongs_to :channel

  def self.search(search)
    if search
      where(['name LIKE ?', "%#{search}%"])
    else
      TvShow.all
    end
  end

  def favorite_shows
    if is_favourite && show_time < 30.min
      TvShowMailer.favorite_shows_begin('from@example.com', channel.name, name, show_time)
    end
  end
end