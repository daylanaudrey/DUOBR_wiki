class Project < ActiveRecord::Base
	has_many :tabelas, dependent: :destroy
	has_many :areas, dependent: :destroy

	validates_presence_of :name
end
