class Noticias::ApplicationController <  ActionController::Base
	protect_from_forgery
	rescue_from CanCan::AccessDenied do |exception|
    redirect_to noticias_root_path, :alert => exception.message
  end
  before_filter :authenticate_user!
  

end
