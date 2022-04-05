# frozen_string_literal: true

class Form::SubmitComponent < ViewComponent::Form::SubmitComponent
  def html_class
    class_names("w-full rounded-lg py-3 px-5 bg-brand text-white inline-block font-medium cursor-pointer")
  end
end
