module ApplicationHelper
	def flash_message(type)
		type == :notice ? "alert-success" : "alert-warning"
		# case type
		# when :notice
		# 	"alert-success"
	 #    when :alert
	 #    	"alert-warning"
	 #    else
	 #       ""
	 #    end
	 end
end
