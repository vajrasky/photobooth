class CreatePeople < ActiveRecord::Migration

  def migrate(direction)
    super
    # Create a default user

    if direction == :up
      Person.create! name: 'Tommy'
      Person.create! name: 'Sky'
      Person.create! name: 'Franky'
      Person.create! name: 'Mohan'
      Person.create! name: 'Arini'
    end
  end

  def change
    create_table :people do |t|
      t.string  :name
      t.integer :position
      t.string  :portrait
      t.text    :portrait_base64
      t.timestamps
    end
  end
end
