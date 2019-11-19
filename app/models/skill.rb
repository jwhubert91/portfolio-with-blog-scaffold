class Skill < ApplicationRecord

	validates :title, :percent_used, presence: true

end
