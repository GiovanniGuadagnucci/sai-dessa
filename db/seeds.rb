SD.each do |phase, _value|
  SD[phase]["categories"][0...-1].each do |category|
    5.times do
      Question.create(content: Faker::TvShows::HowIMetYourMother.quote, category: category, right_answer: 5)
    end
    Education.create(content_url: "https://www.youtube.com/watch?v=hnp1pt8biD4", category: category)
  end
  Question.create(content: Faker::TvShows::HowIMetYourMother.quote, category: "#{phase}_oath", right_answer: 5)
  Education.create(content_url: "https://www.youtube.com/watch?v=hnp1pt8biD4", category: "#{phase}_intro")
end

User.create(name: "a", email: "a@a", password: "123123")
