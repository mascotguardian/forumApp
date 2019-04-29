class ApplicationController < ActionController::Base

  include DeviseWhitelist
  include CurrentUserConcern
  include DefaultPageContent

  before_action :set_source

  def set_source
    session[:source] = params[:q] if params[:q]
  end
end
