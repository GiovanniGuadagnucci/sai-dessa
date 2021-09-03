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
      'soft_skills' => 'Habilidade interpessoais',
      'strong_points' => 'Pontos fortes',
      'week_points' => 'Pontos fracos',
      'second_phase_oath' => 'Juramento',
      'third_phase' => 'Terceira fase',
      'company_culture' => 'Cultura da empresa',
      'company_values' => 'Valores da empresa',
      'company_characteristics' => 'Caracteristicas da empresa',
      'positions' => 'Posições',
      'third_phase_oath' => 'Juramento',
      'fourth_phase' => 'Quarta fase',
      'references' => 'Referências',
      'new_hard_skills' => 'Novas habilidades técnicas',
      'new_soft_skills' => 'Novas habilidades interpessoais',
      'fourth_phase_oath' => 'Juramento'
    }
    translation[term]
  end
end
