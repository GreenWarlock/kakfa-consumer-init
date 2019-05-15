class CreateVisualizations < ActiveRecord::Migration[5.2]
  def change
    create_table :visualizations do |t|
      t.references :resource_visited, null: false
      t.string :user_email, null: false
      t.string :type, null: false, default: "ProfileView"
      t.integer :count, default: 0
      t.date :last_viewed_at
      t.string :city
      t.timestamps
    end
  end
end
