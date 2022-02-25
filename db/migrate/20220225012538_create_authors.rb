class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    enable_extension 'pgcrypto'
    create_table :authors, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.integer :birth_year
      t.boolean :alive

      t.timestamps
    end
  end
end
