class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.rich_text_area :content

      t.timestamps
    end
  end
end
