class MainController < ApplicationController
 # before_action :authenticate_user!, :except => [:show, :index]

  #  http://stackoverflow.com/questions/23555618/redirect-to-log-in-page-if-user-is-not-authenticated-with-devise
  before_filter :authenticate_user!, :only => [:show, :index]

  ## if you want specific action for require authentication
  ## before_filter :authenticate_user!, :only => [:action1, :action2]

  def login

  end

  def logout

  end

  def index
    unless user_signed_in?
           redirect_to(main_logout_url)
#          redirect("layouts/user_widget")
    end
  end
end