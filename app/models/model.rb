class Model < ActiveRecord::Base
	belongs_to :tabela

	validates_presence_of :name, :tabela_id
end
