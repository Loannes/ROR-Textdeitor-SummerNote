class CreateContentImages < ActiveRecord::Migration[5.1]
  def change
    create_table :content_images do |t|
      t.string :name

      t.timestamps
    end
  end
end
