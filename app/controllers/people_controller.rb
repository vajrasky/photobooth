class PeopleController < InheritedResources::Base

  def create
    create! do |success, failure|
      success.html { redirect_to root_url }
    end
  end

  protected

  def permitted_params
    params.permit(:person => [
        :portrait_base64, :name, :sex, :division, :email, :phone_number, :status,
        :hobbies, :dump_in_island_opposite_sex, :dump_in_island_same_sex, :what_to_do_with_500k_rupiah,
        :superpower, :message, :recipient, :anonymous_sending_message, :what_to_do_at_second_night
    ])
  end

end
