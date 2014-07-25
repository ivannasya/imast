class CreateMasterCategories < ActiveRecord::Migration
  def change
    create_table :master_categories do |t|
      t.integer :master_id
      t.integer :category_id
    end
  end
end
