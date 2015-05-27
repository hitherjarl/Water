class CreateWaters < ActiveRecord::Migration
  def change
    create_table :waters do |t|
      t.string :url
      t.string :name
      t.string :caption

      t.timestamps
    end
  end
end
