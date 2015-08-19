class Professional < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :received_messages , :class_name => "ReceivedMessage", :foreign_key => "professional_id"

  has_many :sent_messages , :class_name => "SentMessage", :foreign_key => "professional_id"

  has_many :call_shifts, :class_name => "CallShift", :foreign_key => "professional_id"
end
