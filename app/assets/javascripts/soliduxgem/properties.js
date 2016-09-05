Spree.ready(function($) {
  if($('#property_tree').length){
    var property_id = $('#property_tree').data('property-id');
    Spree.ajax(Spree.pathFor('api/properties') + '/' + property_id).done(function(test){

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
          alert(1);
        }
      });
    })
  }
});
