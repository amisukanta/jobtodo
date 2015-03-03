class AddEmailToJobtodo < ActiveRecord::Migration
  def change
    add_column :jobtodos, :email, :string
  end
end
