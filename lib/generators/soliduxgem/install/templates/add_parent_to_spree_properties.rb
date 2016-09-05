class AddParentToSpreeProperties < ActiveRecord::Migration
  def change
    add_reference :spree_properties, :parent, index: true
    add_column :spree_properties, :position, :integer, default: 0
    add_column :spree_properties, :lft, :integer
    add_column :spree_properties, :rgt, :integer

    add_index :spree_properties, [:parent_id],   :name => 'index_properties_on_parent_id'
  end
end
