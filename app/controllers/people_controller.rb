class PeopleController < InheritedResources::Base

  def create
    create! do |success, failure|
      success.html { redirect_to root_url }
    end
  end

  def permitted_params
    params.permit(:person => [:portrait_base64, :name, :sex, :division, :email, :phone_number, :status])
  end

end
