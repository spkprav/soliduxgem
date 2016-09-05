Spree.ready(function($) {
  if($('#property_tree').length){
    var property_id = $('#property_tree').data('property-id');
    Spree.ajax(Spree.pathFor('api/properties') + '/' + property_id + '?set=nested').done(function(property){

      if(property.root){
        var template = Handlebars.compile($("#property-tree").html());
        Handlebars.registerPartial("propertytree", $("#tree-partial").html());
        $('#property_tree')
          .html( template({ items: property.root.property}) )
          .find('ul')
          .sortable
            connectWith: '#property_tree ul'
            placeholder: 'sortable-placeholder ui-state-highlight'
            tolerance: 'pointer'
            cursorAt: { left: 5 }
      }
    });

    $('.add-property-button').on('click', function(e){
      e.preventDefault();
      var name = 'New property node'
      Spree.ajax({
        type: "POST",
        dataType: "json",
        url: Spree.pathFor('api/properties'),
        data: { property: { name: name, presentation: name, parent_id: property_id } },
        complete: function(){

        }
      });
    })
  }
});
