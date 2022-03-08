require 'rails_helper'

RSpec.feature "Project Voting", type: :feature do
  scenario 'liking a project', js: true do
    user = create(:user)
    sign_in user
    project = create(:project, creator: user)
    visit project_path(project)
    expect { 
      click_on 'Like project'
    }.to change { project.weighted_score }.from(0).to(1)
  end

  scenario 'disliking a project', js: true do
    user = create(:user)
    sign_in user
    project = create(:project, creator: user)
    visit project_path(project)
    expect { 
      click_on 'Dislike project'
    }.to change { project.weighted_score }.from(0).to(-1)
  end

  scenario 'disliking a project when already liked', js: true do
    user = create(:user)
    sign_in user
    project = create(:project, creator: user)
    project.liked_by user
    visit project_path(project)
    expect { 
      click_on 'Dislike project'
    }.to change { project.weighted_score }.from(1).to(-1)
  end

  scenario 'disliking a project when already disliked', js: true do
    user = create(:user)
    sign_in user
    project = create(:project, creator: user)
    project.disliked_by user
    visit project_path(project)
    expect { 
      click_on 'Dislike project'
    }.to change { project.weighted_score }.from(-1).to(0)
  end

  scenario 'liking a project when already liked', js: true do
    user = create(:user)
    sign_in user
    project = create(:project, creator: user)
    project.liked_by user
    visit project_path(project)
    expect { 
      click_on 'Like project'
    }.to change { project.weighted_score }.from(1).to(0)
  end

end
