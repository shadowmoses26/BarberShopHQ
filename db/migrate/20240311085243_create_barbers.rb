class CreateBarbers < ActiveRecord::Migration[7.1]
  def change
    create_table :barbers do |t|
      t.string :name


      t.timestamps
    end

    Barber.create :name => 'Jessie Pinkman'
    Barber.create :name => 'Walter White'
    Barber.create :name => 'Gus Fring'
    Barber.create :name => 'Mike Ehrmantraut'
  end
end
