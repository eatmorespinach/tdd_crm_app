require '../crm_contacts'

class Database

	attr_accessor :db

	def initialize
		@db = []
	end

	def add_contact(contact)
		@db << contact
	end



end