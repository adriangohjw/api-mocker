class CreateApiContents < ActiveRecord::Migration[6.1]
  def change
    create_table :api_contents do |t|
      t.string :title
      t.json :content

      t.timestamps
    end
  end
end
