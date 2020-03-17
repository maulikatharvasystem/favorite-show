namespace :shows do
  desc 'Send messages'
  task send_messages: :environment do
    TvShow.favorite_shows
  end

end
