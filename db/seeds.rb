# SD.each do |phase, _value|
#  SD[phase]["categories"][0...-2].each do |category|
#    5.times do
#      Question.create(content: Faker::TvShows::HowIMetYourMother.quote, category: category, right_answer: 5)
#    end
#    Education.create(content_url: "https://www.youtube.com/watch?v=hnp1pt8biD4", category: category)
#  end
#  Question.create(content: Faker::TvShows::HowIMetYourMother.quote, category: "#{phase}_oath", right_answer: 5)
#  Education.create(content_url: "https://www.youtube.com/watch?v=hnp1pt8biD4", category: "#{phase}_intro")
# end

User.create(name: "a", email: "a@a", password: "123123")
Question.create(content: "Na minha opinião a cultura empresarial é importante para guiar o comportamento e hábitos dos colaboradores", category: "company_culture", right_answer: 5)
Question.create(content: "A cultura empresarial é um conjunto de normas, valores e missão da organização", category: "company_culture", right_answer: 5)
Question.create(content: "Eu nunca parei para pensar no que é a cultura organizacional", category: "company_culture", right_answer: 5)
Question.create(content: "A cultura organizacional deve estar alinhada com meus objetivos e valores assim minhas atitudes e posturas estarão alinhadas com as da empresa e vice e versa", category: "company_culture", right_answer: 5)
Question.create(content: "A forma como a empresa trata o colaborador é parte da cultura organizacional", category: "company_culture", right_answer: 5)

Question.create(content: "Sempre que quero conhecer uma empresa procuro pela missão, visão e valores", category: "company_values", right_answer: 5)
Question.create(content: "Missão, visão e valores resumem o propósito de uma empresa existir, a sua função e seu lugar na sociedade.", category: "company_values", right_answer: 5)
Question.create(content: "Missão, visão e valores demonstram onde uma empresa quer chegar e como é a sua lógica de trabalho.", category: "company_values", right_answer: 5)

Question.create(content: "Setor, tamanho, localização, modelo de trabalho (remoto ou presencial) são caracteristicas de empresas.", category: "company_characteristics", right_answer: 5)

Question.create(content: "Sei exatamente o cargo que eu quero ocupar nume empresa.", category: "positions", right_answer: 5)
Question.create(content: "Já pesquisei sobre o cargo que desejo.", category: "positions", right_answer: 5)
Question.create(content: "https://www.youtube.com/watch?v=ukkOFYLfGHk", category: "positions", right_answer: 5)
Question.create(content: "https://www.youtube.com/watch?v=p7IQyTN6CKY", category: "positions", right_answer: 5)
Question.create(content: "https://www.gupy.io/blog/exemplos-cultura-organizacional", category: "positions", right_answer: 5)
Question.create(content: "https://fia.com.br/blog/cultura-empresarial/", category: "positions", right_answer: 5)
Question.create(content: "https://blog-empresas.ifood.com.br/missao-e-valores-de-uma-empresa/?gclid=Cj0KCQjwm9yJBhDTARIsABKIcGY9-tZYKTjbH3WPukjr2Mhl-9b5YKq-hgAHsp8aW12uMnGY32Oydg8aAnBfEALw_wcB", category: "positions", right_answer: 5)
