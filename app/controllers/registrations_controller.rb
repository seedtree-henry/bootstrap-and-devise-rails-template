class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role, :firstname, :lastname)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :firstname, :lastname)
  end

  def after_update_path_for(resource)
    dashboard_dashboard_v1_path
  end
end
