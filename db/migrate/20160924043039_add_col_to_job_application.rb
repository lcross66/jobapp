class AddColToJobApplication < ActiveRecord::Migration[5.0]
  def change
    add_reference :job_applications, :user, foreign_key: true
  end
end
