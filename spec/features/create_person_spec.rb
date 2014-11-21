require "rails_helper"

describe "creating a person" do

  it "saves valid people and shows them on the root page", driver: :chrome do
    @person = FactoryGirl.build :person

    visit '/'
    click_link 'You'
    expect(current_path).to eq('/orang/new')

    within('#new_person') do
      page.execute_script("$('#person_portrait_base64').val('iVBORw0KGgoAAAANSUhEUgAAABAAAAAQAQMAAAAlPW0iAAAABlBMVEUAAAD///+l2Z/dAAAAM0lEQVR4nGP4/5/h/1+G/58ZDrAz3D/McH8yw83NDDeNGe4Ug9C9zwz3gVLMDA/A6P9/AFGGFyjOXZtQAAAAAElFTkSuQmCC')")

      fill_in 'person[name]',         with: @person.name
      select  'Cewek',                from: 'person[sex]'
      select  'Engineering',          from: 'person[division]'
      fill_in 'person[email]',        with: @person.email
      fill_in 'person[phone_number]', with: @person.phone_number
      select  'Jomblo',               from: 'person[status]'

      # survey questions
      # fill_in 'hobbies',      with: "speaking like a king, dancing like a star"
      # fill_in 'dump_in_island_opposite_sex', :with => @person.dump_in_island_opposite_sex
      # fill_in 'dump_in_island_same_sex', :with => @person.dump_in_island_same_sex
      # fill_in 'what_to_do_with_500k_rupiah', :with => @person.what_to_do_with_500k_rupiah
      # fill_in 'superpower', :with => @person.superpower
      # fill_in 'message', :with => @person.message
      # fill_in 'recipient', :with => @person.recipient
      # fill_in 'what_to_do_at_second_night', :with => @person.what_to_do_at_second_night

      click_button 'Kirim Data'
    end

    expect(current_path).to eq('/')
    expect(page).to have_content(@person.name)
  end

end
