module ApplicationHelper
  include Pagy::Frontend
  include Heroicon::Engine.helpers

  def nav_link_class
    "text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium"
  end
end
