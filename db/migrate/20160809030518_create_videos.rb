class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :url
      t.string :thumb

      t.timestamps null: false
    end

    10.times do
      Video.create({
        url: '/video_clip.mp4',
        thumb: 'http://i.ytimg.com/vi/J6qthM8QTSQ/hqdefault.jpg'
      })
    end

  end
end
