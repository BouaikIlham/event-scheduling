class CreateMettings < ActiveRecord::Migration[7.0]
  def change
    create_table :mettings do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
