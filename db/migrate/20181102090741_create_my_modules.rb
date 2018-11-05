class CreateMyModules < ActiveRecord::Migration[5.2]
  def change
    create_table :my_modules do |t|
      t.string :name
      t.text :description
      t.string :meta_title
      t.timestamps
    end
  end
end
