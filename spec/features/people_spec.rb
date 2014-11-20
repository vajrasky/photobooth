require "rails_helper"

describe "the peoples page" do

  it "shows me all the people", driver: :chrome do
    @person = FactoryGirl.create :person

    page = IndexPage.new
    page.load

    expect(page.person(@person.name)).to be_present
  end

end
