class Student < ApplicationRecord
	validates :language, acceptance: true
	validates :gender, acceptance: true
	before_save do
		self.language.gsub!(/[\[\]\"]/, "") if attribute_present?("language")
	end
end
