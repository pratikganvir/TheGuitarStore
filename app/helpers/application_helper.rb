module ApplicationHelper
	def guitar_models
		Guitar.pluck(:guitar_model).compact.uniq.sort.map {|model| OpenStruct.new(name: model) }
	end
end
