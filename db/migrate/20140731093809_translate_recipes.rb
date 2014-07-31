class TranslateRecipes < ActiveRecord::Migration
  def self.up
    Recipe.create_translation_table!({
      :title => :string,
      :description => :text,
      :ingredients => :text,
      :preparation_method => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Recipe.drop_translation_table! :migrate_data => true
  end
end
