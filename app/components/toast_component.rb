# frozen_string_literal: true

class ToastComponent < ViewComponent::Base
  def initialize(message: 'foo', variant: :success)
    @message = message
    @variant = variant
  end

  def background_color_class
    {
      success: 'bg-green-500',
      error: 'bg-red-500'
    }[@variant]
  end

  def icon_name
    {
      success: 'badge-check',
      error: 'exclamation-circle'
    }[@variant]

  end

end
