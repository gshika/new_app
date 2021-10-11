class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      debugger
      t.string :Title
      t.string :Description
      t.date :Created_date
      t.timestamps
    end
  end
end
