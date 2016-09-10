class CreateJobListings < ActiveRecord::Migration[5.0]
  def change
    create_table :job_listings do |t|
      t.references :user, foreign_key: true
      t.references :company_profile, foreign_key: true
      t.string :title
      t.text :job_description

      t.timestamps
    end
  end
end
