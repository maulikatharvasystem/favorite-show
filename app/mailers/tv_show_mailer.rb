class TvShowMailer < ApplicationMailer
  def favorite_shows_begin(user, channel_name, show_name, show_time)
    @user = user
    @channel_name = channel_name
    @show_name = show_name
    @show_time = show_time
    mail(to: @user, subject: 'Favorite shows')
  end
end
