class CreateAvatarImages < ActiveRecord::Migration[6.1]
  def change
    create_table :avatar_images do |t|
      t.string :image_link

      t.timestamps
    end
  end
end
