SD["first_phase"]["categories"][0...-1].each do |category|
  5.times do
    Question.create(content: Faker::TvShows::HowIMetYourMother.quote, category: category, right_answer: [1, 5].sample)
  end
  Education.create(content_url: "https://www.youtube.com/watch?v=hnp1pt8biD4", category: category)
end

3.times do
  User.create(name: Faker::TvShows::HowIMetYourMother.character, email: Faker::Internet.email, password: "123123")
end

User.all.each do |user|
  Question.all.each do |question|
    Answer.create(question: question, user: user, user_answer: rand(1..5))
  end

  SD["first_phase"]["categories"][0...-1].each do |category|
    user.save_avg_score(category)
  end
end

# a.update(demographic: {})
# temp  = a.jasonb
# temp[key] = value
# a.update(demographic: temp)
