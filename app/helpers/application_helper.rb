module ApplicationHelper

	def get_icon(state)
		state ? '<i class="fas fa-check true"></i>' : '<i class="fas fa-times false "></i>'
	end
end
