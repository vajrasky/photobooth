class CreatePeople < ActiveRecord::Migration

  def change
    create_table :people do |t|
      t.string  :portrait
      t.text    :portrait_base64
      t.string  :name
      t.string  :sex
      t.string  :division
      t.string  :email
      t.string  :phone_number
      t.string  :status
      t.string  :hobbies
      t.timestamps
    end
  end

end
