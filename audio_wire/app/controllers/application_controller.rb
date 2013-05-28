class ApplicationController < ActionController::Base
#	protect_from_forgery
	#session :off#, :if => :sessionless_request?
	# after_filter :skip_set_cookies_header

 # 	before_filter :authenticate_user!
  #before_filter :authenticate_user_with_token!

    # def authenticate_user_with_token!
    #     if params[:auth_token].present?
    #         @user = User.find_by_authentication_token(params[:auth_token]) # we are finding

    #         if (@user == nil)
    #             render :json => { :error => "Wrong token" }
    #         end
    #     else
    #         render :json => { :error => "You need a token" }
    #     end
    # end
    # protected

# def sessionless_request?(request)
#   request.format == :xml || request.format == :json
# end 
# def skip_set_cookies_header
#   request.session_options = {}
# end
end
