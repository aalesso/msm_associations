class Character < ApplicationRecord
 #
 #  Character:
 # - movie_id: must be present
 #   - name: must be present; must be unique in combination with dob
 validates :name, :presence =>true
 # - actor_id: must be present
 validates :actor_id, :presence =>true
 # - name: no rules

end
