require 'faker'


SAIDESSA_PHASES[:first_phase][:categories][0...-1].each do |category|
  5.times do
    Question.create(content: Faker::TvShows::HowIMetYourMother.quote, category: category, right_answer: [1, 5].sample)
  end
end

SAIDESSA_PHASES[:first_phase][:categories][0...-1].each do |category|
  Education.create(content_url: "https://www.youtube.com/watch?v=hnp1pt8biD4", category: category)
end

3.times do

end
