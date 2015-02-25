class Candle < ActiveRecord::Base

  validates :scent, :color, :cost, presence: true
  
end
