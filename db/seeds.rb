if Rails.env.development?
	User.destroy_all
  Round.destroy_all

  user = User.create!(name: "Joe Duffer")

  20.times do
  	user.rounds.create!( date_played: Time.at(rand * Time.now.to_i), score: rand(68..85), fairways: rand(3..14),
  								 greens: rand(2..18), putts: rand(26..38), notes: "Great round!")
  end

	puts 'Development database seeded.'
else
	puts 'Do not seed the DB in production!'
end