class CreateJobListingSkils < ActiveRecord::Migration[5.0]
  def change
    create_table :job_listing_skils do |t|
      t.references :job_listing, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
