class AddIntroToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :intro, :string
  end
end
