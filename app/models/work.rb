class Work < ApplicationRecord

	after_initialize :set_defaults

	validates :title, :body, :main_img, :thumb_img, presence: true
	validates :body, length: {maximum: 1000}

	def self.angular
		where(subtitle: 'Angular')
	end

	def set_defaults
		self.main_img ||= "http://placehold.it/600x400"
		self.thumb_img ||= "http://placehold.it/350x250"
	end

end
