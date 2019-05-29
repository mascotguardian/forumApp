class ApplicationController < ActionController::Base

  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent

  before_action :set_copyright

  def set_copyright
    @copyright = MaddisonViewTool::Renderer.copyright 'Paul Maddison', 'All rights reserved'
  end
end


module MaddisonViewTool
  class Renderer
    def self.copyright name, msg
      "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
    end
  end
end