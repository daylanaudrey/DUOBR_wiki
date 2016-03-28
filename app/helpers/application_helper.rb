module ApplicationHelper
	def titulo_sistema
		"Wiki DuoBR"
	end
  
  def link_to_add_fields(name, f, association, options={})
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
    	render(association.to_s.singularize + "_fields", f: builder)
    end
    data_options = options[:data] || {}
    data_options.merge!({id: id, fields: fields.gsub("\n", "")})
    link_to(name, '#', class: "add_fields btn btn-info pull-right", data: data_options)
  end
end
