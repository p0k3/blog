class CreateArticle < ActiveRecord::Migration
  def up
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.text :summary
      t.text :description
    end
  end

  def down
    drop_table :articles
  end
end
