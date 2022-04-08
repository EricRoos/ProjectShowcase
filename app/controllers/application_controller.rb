class ApplicationController < ActionController::Base
  include Pundit::Authorization
  default_form_builder AppFormBuilder
  before_action :authenticate_user!

  private

  def render_view_template(template_klass, opts = {})
    render(template_klass.new(**opts))
  end
end
