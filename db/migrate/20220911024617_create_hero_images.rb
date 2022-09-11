class CreateHeroImages < ActiveRecord::Migration[6.1]
  def change
    create_table :hero_images do |t|
      t.string :image_link

      t.timestamps
    end
  end
end
