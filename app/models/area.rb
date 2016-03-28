class Area < ActiveRecord::Base
	belongs_to :project
	has_many :table_areas, class_name: 'TableArea', foreign_key: :area_id, dependent: :destroy

	validates :name, presence: true
end
