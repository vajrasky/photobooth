class AddSurveyToPeople < ActiveRecord::Migration

  def change
    add_column :people, :dump_in_island_opposite_sex, :string
    add_column :people, :dump_in_island_same_sex, :string
    add_column :people, :what_to_do_with_500k_rupiah, :string
    add_column :people, :superpower, :string
    add_column :people, :message, :text
    add_column :people, :recipient, :string
    add_column :people, :anonymous_sending_message, :string
    add_column :people, :what_to_do_at_second_night, :string
  end

end
