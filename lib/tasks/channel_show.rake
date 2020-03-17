namespace :channel_show do
  desc 'tv_show'
  task :my_task => :environment do
    ['Sony', 'zee', 'starplus'].each do |c|
      Channel.create(name: c)
    end
  end

  task :my_task1 => :environment do
    Channel.all.each do |channel|
      ['kbc', 'danceplus', 'idianidoal'].each do |t|
        TvShow.create(name: t, show_time: Time.now, channel_id: channel.id)
      end
    end
  end
end
