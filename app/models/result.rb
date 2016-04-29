class Result < ActiveRecord::Base
  validates :years, :months, :days, :hours, :minutes, :seconds, presence: true

  def rides
    (self.minutes/3).floor
  end

  def donuts
  	(self.years*63).floor
  end
end
