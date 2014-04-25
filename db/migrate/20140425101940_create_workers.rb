class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name
      t.integer :age
      t.string :position

      t.timestamps
    end
  end
end
