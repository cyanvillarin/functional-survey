class CreateSurveys < ActiveRecord::Migration[5.1]
  def change
    create_table :surveys do |t|
      t.string :name
      t.boolean :user_type
      t.integer :rating

      t.timestamps
    end
  end
end
