class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_admin_user!
    true
  end

  def index
  end

  def create
    @person = Person.new
  end

  def save
    @person = Person.new person_params
    if @person.save
      redirect_to action: 'index'
    else
      render :create, flash: "That didn't work out"
    end
  end

  private

  def person_params
    params.permit(:portrait_base64, :name, :sex, :division, :email, :phone_number, :status)
  end

end
