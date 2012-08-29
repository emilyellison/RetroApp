class Retro < ActiveRecord::Base
  attr_accessible :sprint, :team_id
  
  belongs_to :team
  has_many :notes
end
