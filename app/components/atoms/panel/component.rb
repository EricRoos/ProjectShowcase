class Atoms::Panel::Component < ViewComponent::Base
  def initialize(solid: true)
    @solid = solid
  end

  def classes
    base_styles = 'flex flex-col p-8 rounded-xl'
    solid_styles = 'bg-gray-100'
    non_solid_styles = 'border-gray-100 border-solid border'

    return "#{base_styles} #{solid_styles}" if @solid
    "#{base_styles} #{non_solid_styles}"
  end
end 