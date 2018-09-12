class CreateListatareas < ActiveRecord::Migration[5.2]
  def change
    create_table :listatareas do |t|
      t.string :nombre
      t.date :f_desde
      t.date :f_hasta
      t.string :responsable
      t.boolean :estado

      t.timestamps
    end
  end
end
