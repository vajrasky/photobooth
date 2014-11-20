class AddManyColumnsToPeople < ActiveRecord::Migration

  def up
    add_column :people, :email, :string
    add_column :people, :phone_number, :string
    add_column :people, :sex, :string
    add_column :people, :hobbies, :string
    add_column :people, :division, :string
    add_column :people, :status, :string
  end

  def down
    remove_column :people, :email
    remove_column :people, :phone_number
    remove_column :people, :sex
    remove_column :people, :division
    remove_column :people, :hobbies
    remove_column :people, :status
  end
end
