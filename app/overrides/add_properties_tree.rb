Deface::Override.new(:virtual_path => 'spree/admin/properties/edit',
  :name => 'add_properties_tree',
  :original => 'fe3ddd84f810ab4475b91b960a04a3eeb6862675',
  :insert_after => 'fieldset',
  :text => '
    <div id="property_tree" class="tree" data-property-id="<%= @property.id %>"></div>
    <script id="property-tree" type="text/x-handlebars-template">
      {{> propertytree }}
    </script>
    <script id="tree-partial" type="text/x-handlebars-template">
      {{#each items}}
        <ul>
          <li data-property-id="{{id}}">
            <div  class="sortable-handle">
              {{#if (isRootProperty) }}{{else}}<i class="fa fa-arrows"></i>{{/if}}
              {{name}}
              <div class="actions right">
                <a href="#" class="js-property-add-child fa fa-plus icon_link no-text"></a>
                <a href="{{admin_url}}/properties/{{id}}/edit" class="fa fa-edit icon_link no-text"></a>
                <a href="#" class="js-property-delete fa fa-trash icon_link no-text"></a>
              </div>
            </div>
            <ul>
              {{> propertytree }}
            </ul>
          </li>
        </ul>
      {{/each}}
    </script>
  '
)
