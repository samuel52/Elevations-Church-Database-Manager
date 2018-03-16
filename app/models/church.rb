class Church < ApplicationRecord

	def self.search(search)
		if search
			where(["fname LIKE ?","%#{search}%"])
		else
			all
		end
		
	end

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Church.create! row.to_hash
		end
	end

	
end
