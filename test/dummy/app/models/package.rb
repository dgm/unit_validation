class Package < ActiveRecord::Base
  attr_accessible :count, :height, :name, :weight, :width


  validates :count, :unit => {:allowed_types => :unitless}
  validates :height, :unit => true
  validates :width, :unit => {:allowed_types => [:mass, :length]}

end
