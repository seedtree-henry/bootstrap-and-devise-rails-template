class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :title
      t.string :description
      t.string :start
      t.string :end

      t.timestamps
    end
  end
end
