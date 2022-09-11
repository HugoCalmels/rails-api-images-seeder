class CreateHeros < ActiveRecord::Migration[6.1]
  def change
    create_table :heros do |t|

      t.timestamps
    end
  end
end
