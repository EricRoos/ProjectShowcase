# frozen_string_literal: true

class Form::TextFieldComponent < ViewComponent::Form::TextFieldComponent
  def html_class
    class_names("block shadow rounded-md border border-gray-200 outline-none px-3 py-2 mt-2 w-full disabled:opacity-25")
  end
end
