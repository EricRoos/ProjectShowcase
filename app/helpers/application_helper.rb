module ApplicationHelper
  def styled_form_field_for(form, field, opts = {} )
    field_type = opts.fetch(:field_type, :text_field)
    render partial: 'components/form_field', locals: { form: form, field: field, opts: opts.slice!(:field_type), field_type: field_type } 
  end

  def styled_submit_button_for(form)
    form.submit class: button_class_name
  end

  def button_class_name
    "rounded-lg py-3 px-5 bg-brand text-white inline-block font-medium cursor-pointer"
  end
end
