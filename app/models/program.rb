class Program < ActiveRecord::Base
  # attr_accessible :title, :body
  has_and_belongs_to_many :users
  attr_accessible :name, :intro, :description
end
