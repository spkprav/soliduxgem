Spree::Api::PropertiesController.class_eval do

  private
  def property_params
    params.require(:property).permit(:name, :parent_id, :position, :lft, :rgt, :presentation)
  end
end
