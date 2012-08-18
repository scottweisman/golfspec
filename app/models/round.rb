class Round < ActiveRecord::Base
  attr_accessible :fairways, :greens, :notes, :putts, :score, :date_played
  validates_presence_of :score, :date_played
  validates_numericality_of :fairways, :greens, :putts, :score



end
