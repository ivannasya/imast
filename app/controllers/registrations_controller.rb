class RegistrationsController < Devise::RegistrationsController

  def update
    update = resource.update(master_params)
    if update
      redirect_to master_path(resource)
    else
      redirect_to edit_master_registration_path, notice: "Адрес эл.почты не может быть пустым"
    end
  end

  protected

  def master_params
    params.require(:master).permit(:email, :name, :phone, :average_cost, :about, :password, :current_password).tap do |master_category|
      master_category[:master_categories] = params[:master][:master_categories]
    end
  end

  def after_sign_up_path_for(resource)
    "/masters/edit"
  end

end