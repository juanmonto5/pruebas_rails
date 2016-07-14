class AddPruebaToTweet < ActiveRecord::Migration[5.0]
  def change
    add_column :tweets, :prueba, :string
  end
end
