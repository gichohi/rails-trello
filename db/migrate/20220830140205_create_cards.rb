class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards, {id: false} do |t|
      t.string :id
      t.string :name
      t.string :idList

      t.timestamps
    end
  end
end
