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
      select 'Ke Maja House',         from: 'person[what_to_do_at_second_night]'

      # survey questions
      fill_in 'person[hobbies]',                     with: "speaking like a king, dancing like a star"
      fill_in 'person[dump_in_island_opposite_sex]', with: "james dune"
      fill_in 'person[dump_in_island_same_sex]',     with: "beyonce gugu"
      select 'Donasi ke yayasan amal',               from: 'person[what_to_do_with_500k_rupiah]'
      choose "person_superpower_mindreader"

      # sending message
      fill_in 'person[message]',                            :with => "Aku cinta kamu. Kamu cinta dia. Dia cinta aku."
      fill_in 'person[recipient]',                          :with => "Batman"
      select "Tidak. Saya ingin nama saya dikumandangkan.", :from => 'person[anonymous_sending_message]'

      click_button 'Kirim Data'
    end

    expect(current_path).to eq('/')
    expect(page).to have_content(@person.name)

    p = Person.last
    expect(p.message).to eq("Aku cinta kamu. Kamu cinta dia. Dia cinta aku.")
    expect(p.recipient).to eq("Batman")
    expect(p.anonymous_sending_message).to eq("Tidak. Saya ingin nama saya dikumandangkan.")
    expect(p.what_to_do_with_500k_rupiah).to eq("Donasi ke yayasan amal")
    expect(p.superpower).to eq("mindreader")
    expect(p.dump_in_island_opposite_sex).to eq("james dune")
    expect(p.dump_in_island_same_sex).to eq("beyonce gugu")
    expect(p.hobbies).to eq("speaking like a king, dancing like a star")
  end

end
