object @property

if params[:set] == 'nested'
  extends "spree/api/taxonomies/nested"
else
  attributes *property_attributes
  child :children => :property do
    attributes *property_attributes
  end
end
