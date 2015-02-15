require "rails_view_helpers/version"
require "rails_view_helpers/helpers"

module RailsViewHelpers
  Phoner::Phone.default_country_code = '7'
  Phoner::Phone.default_area_code = '812'
end

ActiveSupport.on_load(:action_view) do
  include RailsViewHelpers::Helpers
end
