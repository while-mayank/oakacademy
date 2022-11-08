class Student < ApplicationRecord
	validates :language, acceptance: true
	validates :gender, acceptance: true
	has_one_attached :avatar
	before_save do
		self.language.gsub!(/[\[\]\"]/, "") if attribute_present?("language")
	end
end
