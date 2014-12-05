module Blorgh
  class ApplicationController < ActionController::Base
  	before_filter :authenticate_master!
  end
end
