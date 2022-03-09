require 'rails_helper'

RSpec.feature "TagProjects", type: :feature do
  scenario 'tag a project', js: true do
    project = create(:project)
    sign_in project.creator
    visit edit_project_path(project)
    fill_in 'Tag', with: 'new tag'
    expect { 
      click_on 'Add tag'
    }.to change{ Project.find(project.id).tag_list.include?('new tag') }.from(false).to(true)
  end

  scenario 'remove tag', js: true do
    project = create(:project)
    project.tag_list << 'new tag'
    project.save
    sign_in project.creator
    visit edit_project_path(project)
    expect { 
      click_on 'Remove tag: new tag'
    }.to change{ Project.find(project.id).tag_list.include?('new tag') }.from(true).to(false)
  end
end
