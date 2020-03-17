class TvShow < ApplicationRecord
  belongs_to :channel

  def self.search(search)
    if search
      where(['name LIKE ?', "%#{search}%"])
    else
      TvShow.all
    end
  end
end
