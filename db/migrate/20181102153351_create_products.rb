class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :meta_title
      t.text :description
      t.timestamp
      t.string :datetime -> { Time.now }
    end
  end
end


#t.string :my_default_proc, :datetime, default: -> { Time.now }