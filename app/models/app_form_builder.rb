# frozen_string_literal: true

class AppFormBuilder < ViewComponent::Form::Builder
  # Set the namespace you want to use for your own components
  namespace "Form"

  def group(method, &block)
    render_component(:group, @object_name, method) do
      block.call
    end
  end
end
