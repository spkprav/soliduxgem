Spree::Property.class_eval do
  acts_as_nested_set dependent: :destroy
  belongs_to :parent, class_name: "Spree::Property", foreign_key: 'parent_id', dependent: :destroy
end
