class Movie < ApplicationRecord



  # - director_id: must be present
  validates :director_id, :presence => true
  # - year: must be integer between 1870 and 2050
  validates :year, numericality: {only_integer:true , :greater_than =>  1870 , :less_than_or_equal_to =>2050}

  # - title: must be present; must be unique  in combination with year

  validates :title, :presence => true, :uniqueness => { :scope => :year}

  # - duration: must be integer between 0 and 2764800
  validates :duration, numericality: {only_integer:true , :greater_than =>  0 , :less_than_or_equal_to =>2764800}
  # - description: no rules

  # - image_url: no rules


end
