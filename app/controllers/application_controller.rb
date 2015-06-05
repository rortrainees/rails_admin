class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
    protect_from_forgery

    helper RailsAdmin::Engine.helpers

    before_filter :rails_admin_dynamic_config

    def rails_admin_dynamic_config

        model_list = [ Product ]

        model_list.each do |m|
            RailsAdmin::Config.reset_model( m )
        end
end

end