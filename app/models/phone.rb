class Phone < ActiveRecord::Base

belongs_to :site , :class_name => "Site", :foreign_key => "site_id"

end
