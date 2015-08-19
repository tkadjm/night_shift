class Site < ActiveRecord::Base

  has_many :phones , :class_name => "Phone", :foreign_key => "site_id", :dependent => :destroy

  has_many :call_shifts , :class_name => "CallShift", :foreign_key => "site_id"

  belongs_to :hospital , :class_name => "Hospital", :foreign_key => "hospital_id"
end
