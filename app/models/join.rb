class Join < ActiveRecord::Base
	validates :name, presence: true, length: {minimum: 3}
	validates :userid, presence: true, length: {minimum: 3}
   validates :pwd, presence: true, length: {minimum: 3}
	validates :address, presence: true, length: {minimum: 3}
end
