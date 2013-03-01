class ChangeProgramsIntroToTest < ActiveRecord::Migration
  def up
    change_column :programs, :intro, :text
  end

  def down
    change_column :programs, :intro, :string
  end
end
