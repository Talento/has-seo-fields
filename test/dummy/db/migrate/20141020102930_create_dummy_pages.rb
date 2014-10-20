class CreateDummyPages < ActiveRecord::Migration
  def up
    create_table :dummy_pages, foce: true do |t|
      t.string :name
      t.timestamps
    end

  end

end
