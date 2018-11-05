class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :meta_title
      t.text :description
      t.timestamp
      t.attribute :my_default_proc,:datetime, default: -> { Time.now }
      
    end
  end
end


#t.string :my_default_proc, :datetime, default: -> { Time.now }
#<td><%= (product.datetimestrftime("%B %d %Y, %l:%M%P")) %></td>
#<td><%= (product.creator_attribute.strftime("%B %d %Y, %l:%M%P")) %></td>