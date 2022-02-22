class CreateRequirements < ActiveRecord::Migration[7.0]
  def change
    create_table :requirements do |t|
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
