class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :phone
      t.string :datestamp
      t.string :barber
      t.string :color

      t.timestamps
    end

  end
end
