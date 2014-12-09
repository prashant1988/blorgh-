module Blorgh
  class ApplicationController < ActionController::Base
  	before_filter :authenticate_master!
  	

  	rescue_from CanCan::AccessDenied do |exception|
      redirect_to root_url, :alert => exception.message
    end
    
    def current_ability
	  @current_ability ||= Ability.new(current_master)
	end
  
  end
end
