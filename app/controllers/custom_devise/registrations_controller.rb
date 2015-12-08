class CustomDevise::RegistrationsController < Devise::RegistrationsController
  before_action :customize_sign_up_params, only: [:create, :update]

  def new
    # TODO: あとで細々整理する
    if Rails.application.config.omniauth_only
      render text: "Oauth以外の認証は受け付けていません", status: 400
    else
      super
    end
  end

  def destroy
    @user.lock_access!
    redirect_to root_path
  end

  private

  def customize_sign_up_params
    devise_parameter_sanitizer.for(:account_update) << :name
    devise_parameter_sanitizer.for(:sign_up) << :name
  end

  def after_inactive_sign_up_path_for(resource)
    new_user_session_path
  end

end
