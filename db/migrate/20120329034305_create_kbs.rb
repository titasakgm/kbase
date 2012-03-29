class CreateKbs < ActiveRecord::Migration
  def change
    create_table :kbs do |t|
      t.string :tags
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
