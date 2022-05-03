class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :title, null: false
      t.string :classfication, null: false
      t.string :language
      t.string :status
      t.float :price
      t.string :instructor, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
