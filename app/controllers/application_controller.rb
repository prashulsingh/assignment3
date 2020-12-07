class ApplicationController < ActionController::Base
    before_action :authorize
    skip_before_action :authorize 
    include CurrentCart
    before_action :set_cart
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

   def authorize
        unless User.find_by(id: session[:user_id])
            redirect_to login_url, notice: "Please log in"
        end
    end
end
