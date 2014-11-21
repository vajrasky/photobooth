require "rails_helper"

describe "the peoples page" do

  it "shows me all the people", driver: :chrome do
    @person = FactoryGirl.build :person

    visit "/orang/new"

    within("#new_person") do
      # id questions

      fill_in 'name',        with: @person.name
      select  'Cewek',       from: 'sex'
      select  'Engineering', from: 'division'
      fill_in 'email',       with: @person.email
      fill_in 'phone_number', with: @person.phone_number
      select  'jomblo',       from: 'status'

      # survey questions
      # fill_in 'hobbies',      with: "speaking like a king, dancing like a star"
      # fill_in 'dump_in_island_opposite_sex', :with => @person.dump_in_island_opposite_sex
      # fill_in 'dump_in_island_same_sex', :with => @person.dump_in_island_same_sex
      # fill_in 'what_to_do_with_500k_rupiah', :with => @person.what_to_do_with_500k_rupiah
      # fill_in 'superpower', :with => @person.superpower
      # fill_in 'message', :with => @person.message
      # fill_in 'recipient', :with => @person.recipient
      # fill_in 'what_to_do_at_second_night', :with => @person.what_to_do_at_second_night

      click_button 'Kirim data'
    end

    expect(current_path).to eq('/')
    expect(page).to have_content(@person.name)
  end

end
