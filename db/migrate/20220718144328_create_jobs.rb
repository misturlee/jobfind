class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.text :job_desc
      t.string :salary
      t.string :category

      t.timestamps
    end
  end
end
