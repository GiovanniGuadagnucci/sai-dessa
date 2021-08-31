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
end

def avg_score(category, user)
  answers = Answer.joins(:question).where('questions.category = ? AND answers.user_id = ?', category, user.id)
  scores = answers.map do |answer|
    resposta_certa = answer.question.right_answer
    resposta_usuario = answer.user_answer
    resposta_certa == 1 ? ((resposta_usuario - resposta_certa) * -20) + 100 : ((resposta_certa - resposta_usuario) * -20) + 100
  end
  scores.sum / scores.size
end

User.all.each do |user|
  SD["first_phase"]["categories"][0...-1].each do |category|
    temp = user.score["first_phase"]
    temp[category] = avg_score(category, user)
    user.score["first_phase"] = temp
    user.save
  end
end

# a.update(demographic: {})
# temp  = a.jasonb
# temp[key] = value
# a.update(demographic: temp)
