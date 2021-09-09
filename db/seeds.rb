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

User.destroy_all
Question.destroy_all
Answer.destroy_all
Education.destroy_all

puts 'Instâncias destruídas'


User.create(name: "a", email: "a@a", password: "123123")
puts 'Usuário criado'

# ---------- INICIO DE QUESTOES
# ---------- QUESTOES PRIMEIRA FASE
Question.create(
  content: "Reconheço com facilidade o que sinto em diferentes situações ",
  category: "self_knowledge",
  right_answer: 5
)
Question.create(
  content: "Em situações de conflito permaneço calmo",
  category: "self_knowledge",
  right_answer: 5
)
Question.create(
  content: "Me sinto muito mal quando erro",
  category: "self_knowledge",
  right_answer: 1
)
Question.create(
  content: "Frequentemente me sinto ansioso",
  category: "self_knowledge",
  right_answer: 1
)
Question.create(
  content: "Preciso de ajuda de outras pessoas para decidir algo importante na minha vida mesmo que não impacte mais ninguém ",
  category: "self_knowledge",
  right_answer: 1
)
Question.create(
  content: "Concordo com o que os demais dizem somente para evitar conflitos",
  category: "self_knowledge",
  right_answer: 1
)
Question.create(
  content: "Normalmente desconfio quando recebo um elogio",
  category: "self_knowledge",
  right_answer: 1
)

Question.create(
  content: "A vida que estou levando é 100% condizente com meu proposito",
  category: "personal_objectives",
  right_answer: 5
)

Question.create(
  content: "Não penso em meus valores pessoais para tomar uma decisão",
  category: "personal_values",
  right_answer: 1
)

# ---------- QUESTOES SEGUNDA FASE
Question.create(
  content: "Reconheço ter algumas habilidades que são inúteis para alcançar os meus objetivos pessoais",
  category: "hard_skills",
  right_answer: 5
)
Question.create(
  content: "Minhas habilidades tecnicas estão alinhadas com meus objetivos pessoais",
  category: "hard_skills",
  right_answer: 5
)
Question.create(
  content: "Frequentemente recebo elogios por habilidades que reconheço como minhas qualidades",
  category: "hard_skills",
  right_answer: 5
)
Question.create(
  content: "Tenho habilidades técnicas das quais eu gosto muito quando tenho oportunidade de exercer",
  category: "hard_skills",
  right_answer: 5
)

Question.create(
  content: "Minhas soft skills me ajudarão a realizar meus objetivos pessoais",
  category: "soft_skills",
  right_answer: 5
)
Question.create(
  content: "Tenho habilidades interpessoais que não se alinham com aquilo que quero",
  category: "soft_skills",
  right_answer: 5
)
Question.create(
  content: "Minhas qualidades pessoais são frequentemente elogiadas pelos meus colegas",
  category: "soft_skills",
  right_answer: 5
)
Question.create(
  content: "Tenho habilidades sociocomportamentais das quais eu gosto muito de colocar em prática",
  category: "soft_skills",
  right_answer: 5
)

Question.create(
  content: "Costumo pensar e relembrar dos meus pontos fracos",
  category: "week_points",
  right_answer: 5
)
Question.create(
  content: "Alguns pontos fracos não me atrapalham para alcançar os meus objetivos pessoais",
  category: "week_points",
  right_answer: 5
)
Question.create(
  content: "Preciso me desenvolver em todos os meus pontos fracos",
  category: "week_points",
  right_answer: 1
)

Question.create(
  content: "Costumo receber elogios por essas habilidades",
  category: "strong_points",
  right_answer: 5
)
Question.create(
  content: "Alguns pontos fortes ainda precisam ser mais desenvolvidos para me ajudar a alcançar os meus objetivos pessoais",
  category: "strong_points",
  right_answer: 5
)
Question.create(
  content: "Na maioria das vezes eu não estou pensando em evoluir meus pontos fortes, foco nos pontos fracos",
  category: "strong_points",
  right_answer: 1
)

# ---------- QUESTOES TERCEIRA FASE
Question.create(
  content: "Na minha opinião a cultura empresarial é importante para guiar o comportamento e hábitos dos colaboradores",
  category: "company_culture",
  right_answer: 5
)
Question.create(
  content: "A cultura empresarial é um conjunto de normas, valores e missão da organização",
  category: "company_culture",
  right_answer: 5
)
Question.create(
  content: "Eu nunca parei para pensar no que é a cultura organizacional",
  category: "company_culture",
  right_answer: 5
)
Question.create(
  content: "A cultura organizacional deve estar alinhada com meus objetivos e valores assim minhas atitudes e posturas estarão alinhadas com as da empresa e vice e versa.",
  category: "company_culture",
  right_answer: 5
)
Question.create(
  content: "A forma como a empresa trata o colaborador é parte da cultura organizacional",
  category: "company_culture",
  right_answer: 5
)

Question.create(
  content: "Sempre que quero conhecer uma empresa procuro pela missão, visão e valores",
  category: "company_values",
  right_answer: 5
)
Question.create(
  content: "Missão, visão e valores resumem o propósito de uma empresa existir, a sua função e seu lugar na sociedade",
  category: "company_values",
  right_answer: 5
)
Question.create(
  content: "Missão, visão e valores demonstram onde uma empresa quer chegar e como é a sua lógica de trabalho",
  category: "company_values",
  right_answer: 5
)

Question.create(
  content: "Setor, tamanho, localização, modelo de trabalho (remoto ou presencial) são caracteristicas de empresas",
  category: "company_characteristics",
  right_answer: 5
)

Question.create(
  content: "Sei exatamente o cargo que eu quero ocupar nume empresa",
  category: "positions",
  right_answer: 5
)
Question.create(
  content: "Já pesquisei sobre o cargo que desejo",
  category: "positions",
  right_answer: 5
)

# ---------- QUESTOES QUARTA FASE
Question.create(
  content: "Identifico com facilidade pessoas que estão no cargo que quero ocupar",
  category: "references",
  right_answer: 5
)
Question.create(
  content: "Sei quais são as habilidades técnicas que preciso desenvolver",
  category: "new_hard_skills",
  right_answer: 5
)
Question.create(
  content: "Reconheço as qualidades interpessoais que são necessárias para atingir meus objetivos",
  category: "new_soft_skills",
  right_answer: 5
)

# ---------- QUESTOES JURAMENTOS
Question.create(
  content: "Me comprometo em seguir as dicas para me autoconhecer profundamente",
  category: "first_phase_oath",
  right_answer: 5
)
Question.create(
  content: "Entendi o que são Hard e Soft Skills e sou capaz de dizer quais são meus pontos fracos e fortes",
  category: "second_phase_oath",
  right_answer: 5
)
Question.create(
  content: "Sou capaz de identificar valores, cultura e caracteristicas de empresas! E sei qual delas me interessam",
  category: "third_phase_oath",
  right_answer: 5
)
Question.create(
  content: "Já sei o que preciso desenvolver para atingir meu objetivo",
  category: "fourth_phase_oath",
  right_answer: 5
)

puts "#{Question.count} questões criadas"

# ---------- INICIO DE CONTEUDOS
# ---------- CONTEUDOS PRIMEIRA FASE
Education.create(
  content_url: "Sai_dessa/Primeira_Fase/C24",
  category: "self_knowledge"
)
Education.create(
  content_url: "Sai_dessa/Primeira_Fase/C25",
  category: "self_knowledge"
)
Education.create(
  content_url: "Sai_dessa/Primeira_Fase/C26",
  category: "self_knowledge"
)
Education.create(
  content_url: "Sai_dessa/Primeira_Fase/C27",
  category: "self_knowledge"
)
Education.create(
  content_url: "Sai_dessa/Primeira_Fase/C28",
  category: "personal_objectives"
)
Education.create(
  content_url: "Sai_dessa/Primeira_Fase/C29",
  category: "personal_values"
)

# ---------- CONTEUDOS SEGUNDA FASE
Education.create(
  content_url: "Sai_dessa/Segunda_Fase/C85",
  category: "hard_skills"
)
Education.create(
  content_url: "Sai_dessa/Segunda_Fase/C86",
  category: "soft_skills"
)
Education.create(
  content_url: "Sai_dessa/Segunda_Fase/C87",
  category: "soft_skills"
)
Education.create(
  content_url: "Sai_dessa/Segunda_Fase/C88",
  category: "hard_skills"
)
Education.create(
  content_url: "Sai_dessa/Segunda_Fase/C89",
  category: "strong_points"
)
Education.create(
  content_url: "Sai_dessa/Segunda_Fase/C89",
  category: "week_points"
)

# ---------- CONTEUDOS TERCEIRA FASE
Education.create(
  content_url: "Sai_dessa/Terceira_Fase/C116",
  category: "company_culture"
)
Education.create(
  content_url: "Sai_dessa/Terceira_Fase/C117",
  category: "company_culture"
)
Education.create(
  content_url: "Sai_dessa/placeholder",
  category: "company_values"
)
Education.create(
  content_url: "Sai_dessa/placeholder",
  category: "company_characteristics"
)
Education.create(
  content_url: "Sai_dessa/placeholder",
  category: "positions"
)

# ---------- CONTEUDOS QUARTA FASE
Education.create(
  content_url: "Sai_dessa/placeholder",
  category: "references"
)
Education.create(
  content_url: "Sai_dessa/placeholder",
  category: "new_hard_skills"
)
Education.create(
  content_url: "Sai_dessa/placeholder",
  category: "new_soft_skills"
)

# ---------- CONTEUDOS INTRODUCAO
Education.create(
  content_url: "Sai_dessa/Primeira_Fase/C24",
  category: "first_phase_intro"
)
Education.create(
  content_url: "Sai_dessa/Segunda_Fase/C85",
  category: "second_phase_intro"
)
Education.create(
  content_url: "Sai_dessa/Terceira_Fase/C116",
  category: "third_phase_intro"
)
Education.create(
  content_url: "Sai_dessa/placeholder",
  category: "fourth_phase_intro"
)

puts "#{Education.count} conteúdos criados"
