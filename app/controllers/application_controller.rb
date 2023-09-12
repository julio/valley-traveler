class ApplicationController < ActionController::Base
  include Pagy::Backend

  def not_found_method
    render file: Rails.public_path.join('404.html'), status: :not_found, layout: false
  end
end
