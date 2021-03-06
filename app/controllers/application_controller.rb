class ApplicationController < ActionController::Base


  def after_sign_in_path_for(resource)
    case resource
      when User
      user_habits_path
      when Admin
      admin_home_path
    end
  end

  def after_sign_out_path_for(resource)
    top_path
  end

  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :name_kana, :nickname, :sex ,:birth])
  end

end
