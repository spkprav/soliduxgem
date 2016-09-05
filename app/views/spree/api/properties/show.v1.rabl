object @property

attributes *[:id, :name, :presentation, :parent_id, :lft, :rgt]
child :root => :root do
  attributes *[:id, :name, :presentation, :parent_id, :lft, :rgt]

  child :children => :property do
    attributes *[:id, :name, :presentation, :parent_id, :lft, :rgt]
  end
end
