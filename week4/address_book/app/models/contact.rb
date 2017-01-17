class Contact < ApplicationRecord
belongs_to :contact
	validates :name, presence: true
	validates :address, presence: true
	validates :email, presence: true
	validates :phone, :numericality => true
end
