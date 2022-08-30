class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists, {id: false} do |t|
      t.string :id
      t.string :name

      t.timestamps
    end
  end
end
