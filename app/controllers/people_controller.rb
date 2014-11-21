class PeopleController < ApplicationController

  def new
    @person = Person.new
  end

  def create
    @person = Person.new person_params
    if @person.save
      redirect_to root_path
    else
      render :create, flash: "That didn't work out"
    end
  end

  private

  def person_params
    params.permit(:portrait_base64, :name, :sex, :division, :email, :phone_number, :status)
  end

end
