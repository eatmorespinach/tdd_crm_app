require '../crm_contacts'

class Database

	attr_accessor :db

	def initialize
		@db = []
		# @contact = Contact.new
	end

	def add_contact(contact)
		@db << contact
	end

	def delete_contact(contact)
		@db.delete(contact)
		@db
	end

end