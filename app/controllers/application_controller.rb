class ApplicationController < ActionController::Base
  include Pundit::Authorization
  default_form_builder AppFormBuilder
  before_action :authenticate_user!
end
