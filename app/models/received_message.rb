class ReceivedMessage < ActiveRecord::Base

belongs_to :professional , :class_name => "Professional", :foreign_key => "professional_id"

end
