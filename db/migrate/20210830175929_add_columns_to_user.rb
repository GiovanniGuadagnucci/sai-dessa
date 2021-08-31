class AddColumnsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :score, :jsonb, null: false, default: {
      'first_phase' => {}, 'second_phase' => {},
      'third_phase' => {}, 'fourth_phase' => {}, 'fifth_phase' => {}
    }
    add_column :users, :demographic, :jsonb, null: false, default: {}
  end
end
