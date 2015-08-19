class Hospital < ActiveRecord::Base

  has_many :sites , :class_name => "Site", :foreign_key => "hospital_id", :dependent => :destroy
  has_many :phones, :through => :sites

end
