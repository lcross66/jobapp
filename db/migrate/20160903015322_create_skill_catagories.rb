class CreateSkillCatagories < ActiveRecord::Migration[5.0]
  def change
    create_table :skill_catagories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
