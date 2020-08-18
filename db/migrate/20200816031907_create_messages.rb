class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :first_name
      t.string :family_name
      t.string :first_name_kana
      t.string :family_name_kana
      t.text :introduction
      t.string :hobby
      t.string :skill
      t.string :likes
      t.integer :user_id

      t.timestamps
    end
  end
end
