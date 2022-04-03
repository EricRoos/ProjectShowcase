class AddStateToProjectSubmissions < ActiveRecord::Migration[7.0]
  def change
    add_column :project_submissions, :state, :string
  end
end
