#  SD.each do |phase, _value|
#    SD[phase]["categories"][0...-2].each do |category|
#      5.times do
#        Question.create(content: Faker::TvShows::HowIMetYourMother.quote, category: category, right_answer: 5)
#      end
#      Education.create(content_url: "https://www.youtube.com/watch?v=hnp1pt8biD4", category: category)
#    end
#    Question.create(content: Faker::TvShows::HowIMetYourMother.quote, category: "#{phase}_oath", right_answer: 5)
#    Education.create(content_url: "https://www.youtube.com/watch?v=hnp1pt8biD4", category: "#{phase}_intro")
#  end

User.create(name: "a", email: "a@a", password: "123123")

Question.create(content: "Reconheço com facilidade o que sinto em diferentes situações ", category: "self_knowledge", right_answer: 5)
Question.create(content: "Em situações de conflito permaneço calmo", category: "self_knowledge", right_answer: 5)
Question.create(content: "Me sinto muito mal quando erro", category: "self_knowledge", right_answer: 5)
Question.create(content: "Frequentemente me sinto ansioso", category: "self_knowledge", right_answer: 5)
Question.create(content: "Preciso de ajuda de outras pessoas para decidir algo importante na minha vida mesmo que não impacte mais ninguém ", category: "self_knowledge", right_answer: 5)
Question.create(content: "Concordo com o que os demais dizem somente para evitar conflitos", category: "self_knowledge", right_answer: 5)
Question.create(content: "Normalmente desconfio quando recebo um elogio", category: "self_knowledge", right_answer: 5)

Question.create(content: "A vida que estou levando é 100% condizente com meu proposito", category: "personal_objectives", right_answer: 5)

Question.create(content: "Não penso em meus valores pessoais para tomar uma decisão", category: "personal_values", right_answer: 5)

Question.create(content: "Não penso em meus valores pessoais para tomar uma decisão", category: "hard_skills", right_answer: 5)
Question.create(content: "Minhas habilidades tecnicas estão alinhadas com meus objetivos pessoais", category: "hard_skills", right_answer: 5)
Question.create(content: "Frequentemente recebo elogios por habilidades que reconheço como minhas qualidades", category: "hard_skills", right_answer: 5)
Question.create(content: "Tenho habilidades técnicas das quais eu gosto muito quando tenho oportunidade de exercer", category: "hard_skills", right_answer: 5)

Question.create(content: "Minhas soft skills me ajudarão a realizar meus objetivos pessoais", category: "soft_skills", right_answer: 5)
Question.create(content: "Reconheço ter algumas habilidades que são inuteis para alcançar os meus objetivos pessoais ", category: "soft_skills", right_answer: 5)
Question.create(content: "Frequentemente recebo elogios por habilidades que reconheço como minhas qualidades", category: "soft_skills", right_answer: 5)
Question.create(content: "Tenho habilidades sociocomportamentais das quais eu gosto muito de colocar em prática", category: "soft_skills", right_answer: 5)

Question.create(content: "Costumo pensar e relembrar dos meus pontos fracos", category: "week_points", right_answer: 5)
Question.create(content: "Alguns pontos fracos não me atrapalham para alcançar os meus objetivos pessoais", category: "week_points", right_answer: 5)
Question.create(content: "Preciso me desenvolver em todos os meus pontos fracos", category: "week_points", right_answer: 5)

Question.create(content: "Costumo receber elogios por essas habilidades", category: "strong_points", right_answer: 5)
Question.create(content: "Alguns pontos fortes ainda precisam ser mais desenvolvidos para me ajudar a alcançar os meus objetivos pessoais", category: "strong_points", right_answer: 5)
Question.create(content: "Na maioria das vezes eu não estou pensando em evoluir meus pontos fortes, foco nos pontos fracos", category: "strong_points", right_answer: 5)

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


Education.create(content_url: "C24", category: "self_knowledge")
Education.create(content_url: "C25", category: "self_knowledge")
Education.create(content_url: "C26", category: "self_knowledge")
Education.create(content_url: "C27", category: "self_knowledge")
Education.create(content_url: "C28", category: "personal_objectives")
Education.create(content_url: "C29", category: "personal_values")

Education.create(content_url: "C85", category: "hard_skills")
Education.create(content_url: "C86", category: "soft_skills")
Education.create(content_url: "C87", category: "soft_skills")
Education.create(content_url: "C88", category: "hard_skills")
Education.create(content_url: "C89", category: "strong_points")
Education.create(content_url: "C90", category: "week_points")

Education.create(content_url: "C90", category: "company_culture")
Education.create(content_url: "C90", category: "company_culture")
Education.create(content_url: "placeholder", category: "company_values")
Education.create(content_url: "placeholder", category: "company_characteristics")
Education.create(content_url: "placeholder", category: "positions")
