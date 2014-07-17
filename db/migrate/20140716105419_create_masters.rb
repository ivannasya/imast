class CreateMasters < ActiveRecord::Migration
  def change
    create_table :masters do |t|
      t.string :name
      t.text :about
      t.float :average_cost
      t.string :phone

      t.timestamps
    end
  end
end
