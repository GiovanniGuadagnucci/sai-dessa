module TraducaoHelper
  def translate(term)
    translation = {
      'first_phase' => 'Primeira fase',
      'self_knowledge' => 'Autoconhecimento',
      'personal_objectives' => 'Objetivos pessoais',
      'personal_values' => 'Valores pessoais',
      'first_phase_oath' => 'Juramento',
      'score' => 'Pontuação',
      'second_phase' => 'Segunda fase',
      'hard_skills' => 'Habilidades técnicas',
      'soft_skills' => 'Habilidades interpessoais',
      'strong_points' => 'Pontos fortes',
      'week_points' => 'Pontos fracos',
      'second_phase_oath' => 'Juramento',
      'third_phase' => 'Terceira fase',
      'company_culture' => 'Cultura da empresa',
      'company_values' => 'Valores da empresa',
      'company_characteristics' => 'Caracteristicas da empresa',
      'positions' => 'Cargos',
      'third_phase_oath' => 'Juramento',
      'fourth_phase' => 'Quarta fase',
      'references' => 'Referências',
      'new_hard_skills' => 'Novas habilidades técnicas',
      'new_soft_skills' => 'Novas habilidades interpessoais',
      'fourth_phase_oath' => 'Juramento',
      'first_phase_intro' => 'Introdução para Primeira Fase',
      'second_phase_intro' => 'Introdução para Segunda Fase',
      'third_phase_intro' => 'Introdução para Terceira Fase',
      'fourth_phase_intro' => 'Introdução para Quarta Fase'
    }
    translation[term]
  end
end
