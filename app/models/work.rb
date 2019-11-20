class Work < ApplicationRecord

	validates :title, :body, :main_img, :thumb_img, presence: true
	validates :body, length: {maximum: 1000}

	def self.angular
		where(subtitle: 'Angular')
	end

end
