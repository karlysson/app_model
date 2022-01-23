class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout Proc.new { |controller| controller.devise_controller? ? 'layouts/login/application' : 'layouts/site/application' }
end

