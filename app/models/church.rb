class Church < ApplicationRecord

	validates :fname, presence: true
	validates :lname, presence: true
	validates :email, presence: true
	validates :phone, presence: true
	validates :rsvp, presence: true
	validates :friend, presence: true
	validates :memeber, presence: true

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
