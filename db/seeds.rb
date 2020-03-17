# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

['Sony', 'zee', 'starplus'].each do |c|
  Channel.create(name: c)
end

Channel.all.each do |channel|
  ['kbc', 'danceplus', 'idianidoal'].each do |t|
    TvShow.create(name: t, show_time: Time.now, channel_id: channel.id)
  end
end