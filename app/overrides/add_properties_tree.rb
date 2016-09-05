Deface::Override.new(:virtual_path => 'spree/admin/properties/edit',
  :name => 'add_properties_tree',
  :original => 'fe3ddd84f810ab4475b91b960a04a3eeb6862675',
  :insert_after => 'fieldset',
  :text => '<div id="property_tree" class="tree" data-property-id="<%= @property.id %>"></div>'
)
