class Tabela < ActiveRecord::Base
	belongs_to :project
	has_many :fields, dependent: :destroy
	has_many :table_areas, dependent: :destroy
	has_many :areas, through: :table_areas
	has_many :models, dependent: :destroy

	accepts_nested_attributes_for :fields, allow_destroy: true
end