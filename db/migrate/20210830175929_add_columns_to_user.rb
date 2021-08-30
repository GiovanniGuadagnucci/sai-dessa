class AddColumnsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :score, :jsonb, null: false, default: '{}'
    add_column :users, :demographic, :jsonb, null: false, default: '{}'
  end
end
