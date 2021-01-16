class AddIngredientesToPizzas < ActiveRecord::Migration[6.1]
  def change
    add_column :pizzas, :ingredientes, :string
  end
end
