module ProjectsHelper
  def like_button(project, current_user)
    class_name = base_like_button_class_name
    class_name << ' border-blue-500'
    class_name << ' bg-blue-100' if current_user.voted_up_on?(project)
    button_to like_project_path(project), class: class_name, 'aria-label': 'Like project' do
      heroicon('thumb-up', class_name: 'h-4 text-blue-500')
    end
  end

  def dislike_button(project, current_user)
    class_name = base_like_button_class_name
    class_name << ' border-red-500'
    class_name << ' bg-red-100' if current_user.voted_down_on?(project)
    button_to dislike_project_path(project), class: class_name, 'aria-label': 'Dislike project' do
      heroicon('thumb-down', class_name: 'h-4 text-red-500')
    end
  end

  def base_like_button_class_name
    'border border-solid p-1 rounded'
  end
end
