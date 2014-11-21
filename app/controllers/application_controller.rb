class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout "application"

  def authenticate_admin_user!
    true
  end

  def index
    @people = Person.order(:created_at)

    if @q = params[:q]
      query = "%#{@q}%"
      @people = @people.where("name ilike :query or email ilike :query", query: query)
    end

  end

end
