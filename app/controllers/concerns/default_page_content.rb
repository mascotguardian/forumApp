module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
      @page_title = "Tech Blog"
      @seo_keywords = "Paul Maddison portfolio application"
  end
end