class CreateTvShows < ActiveRecord::Migration[6.0]
  def change
    create_table :tv_shows do |t|
      t.string    :name
      t.time      :show_time
      t.integer   :channel_id
      t.timestamps
    end
  end
end
