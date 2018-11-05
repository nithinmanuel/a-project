class ProductSerializer < ActiveModel::Serializer
  attributes :id, :" name", :meta_title, :description
end
