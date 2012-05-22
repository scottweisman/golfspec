
FactoryGirl.define do
  
  factory :round do |f|
    f.date_played "2012-05-22"
    f.score 80
    f.fairways 6
    f.greens 4
    f.putts 36
    f.notes "Average round."
  end
  
  factory :invalid_round, parent: :round do |f|
    f.score nil
    f.date_played "2012-05-22"
    f.fairways 6
    f.greens 4
    f.putts 36
    f.notes "Below average round."
  end
  
end
