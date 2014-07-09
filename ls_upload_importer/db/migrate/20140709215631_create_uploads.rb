class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :filename
      t.binary :data
      t.float :revenue

      t.timestamps
    end
  end
end
