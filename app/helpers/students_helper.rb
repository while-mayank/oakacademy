module StudentsHelper
	def checked(area)
		@student.language.nil? ? false : @student.language.match(area)
	end
end
