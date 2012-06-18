class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.string :weight
      t.string :height
      t.string :width
      t.string :count

      t.timestamps
    end
  end
end
