class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :item_name
      t.string :item_dscription
      t.timestamps
    end
  end
end
