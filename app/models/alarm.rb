class Alarm < ActiveRecord::Base
	include ClassyEnum::ActiveRecord
	
	classy_enum_attr :priority
  delegate :send_email?, to: :priority
end
