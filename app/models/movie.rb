class Movie < ActiveRecord::Base

  has_many :roles

  belongs_to :director

  has_many :actors, :through => :roles

end
