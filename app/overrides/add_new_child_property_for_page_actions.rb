Deface::Override.new(:virtual_path => 'spree/admin/properties/edit',
  :name => 'add_new_child_property_for_page_actions',
  :original => 'fe3ddd84f810ab4475b91b960a04a3eeb6862675',
  :insert_after => "erb[loud]:contains('button_link_to Spree.t(:back_to_properties_list)')",
  :text => "
      <li>
        <%= button_link_to Spree.t(:add_property), spree.admin_properties_path, { icon: 'plus', class: 'add-property-button' } %>
      </li>"
)
