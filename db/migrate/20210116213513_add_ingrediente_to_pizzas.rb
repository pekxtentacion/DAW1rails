class AddIngredienteToPizzas < ActiveRecord::Migration[6.1]
  def change
    add_column :pizzas, :ingrediente, :string
  end
end
