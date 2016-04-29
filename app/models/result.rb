class Result < ActiveRecord::Base
  validates :years, :months, :days, :hours, :minutes, :seconds, presence: true

  def rides
    (self.minutes/3).floor
  end

  def donuts
  	(self.years*63).floor
  end

  def drinks 
  	(self.months*42.614).floor
  end

  def fb
  	(self.days*40).floor
  end

  def sleeping
  	(self.hours/3).floor
  end

  def heart_min
  	(self.minutes).floor
  end

  def heart_max
  	(self.minutes/0.6).floor
  end
end
