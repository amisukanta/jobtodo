class CreateJobtodos < ActiveRecord::Migration
  def change
    create_table :jobtodos do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
