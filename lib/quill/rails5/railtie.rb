require 'quill/rails5/view_helpers'

module Quill
  module Rails5
    class Railtie < Rails::Railtie
      initializer "quill.rails5.view_helpers" do
        ActiveSupport.on_load( :action_view ){ include Quill::Rails5::ViewHelpers }
      end
    end
  end
end
