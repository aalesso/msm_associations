class Character < ApplicationRecord
 #
 #  Character:
 # - movie_id: must be present
 #   - name: must be present; must be unique in combination with dob
 validates :name, :presence =>true
 # - actor_id: must be present
 validates :actor_id, :presence =>true
 # - name: no rules


belongs_to(:actor,:class_name => "Actor", :foreign_key => "actor_id")
belongs_to(:movie,:class_name => "Movie", :foreign_key => "movie_id")

end
