class AddFavouriteInTvShow < ActiveRecord::Migration[6.0]
  def change
    add_column :tv_shows, :is_favourite, :string
  end
end
