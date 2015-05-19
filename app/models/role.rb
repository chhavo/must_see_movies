class Role < ActiveRecord::Base
  validates :character_name, :presence => true

  belongs_to :actor, :class_name => "Actor", :foreign_key => "actor_id"

  belongs_to :movie, :class_name => "Movie", :foreign_key => "movie_id"

  has_many :actors #, :class_name => "Actor", :foreign_key => "actor_id"

  # def actor
  #     return Actor.find_by({I:id => self.actor_id})
  # end
end
