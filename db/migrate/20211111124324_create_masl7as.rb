class CreateMasl7as < ActiveRecord::Migration[5.1]
  def change
    create_table :masl7as do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
