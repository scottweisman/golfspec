if Rails.env.development?
  Round.destroy_all

  20.times do
  	Round.create!( date_played: Time.at(rand * Time.now.to_i), score: rand(68..85), fairways: rand(3..14), 
  								 greens: rand(2..18), putts: rand(26..38), notes: "Great round!")
  end

	puts 'Development database seeded.'
else
	puts 'Do not seed the DB in production!'
end