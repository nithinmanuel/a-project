class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :meta_title
      t.text :description
      t.timestamp
      attribute :my_default_proc, :datetime, default: -> { Time.now }
  end
      #t.strftime(2007,11,19,8,37,48,"-06:00") 
      
  
      
  	# :products do |d|
     # d = DateTime.new(2007,11,19,8,37,48,"-06:00")ime
##=> #<DateTime: 2007-11-19T08:37:48-0600 ...>
      #d.strftime("Printed on %m/%d/%Y")   #=> "Printed on 11/19/2007"
      #d.strftime("at %I:%M%p")
    #t = Time.n


#<td><%= product.strftime("%B %d %Y, %l:%M%P") %></td>
#<td><%= product.Time %></td>.

