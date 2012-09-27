module ApplicationHelper
	def nice_date_form(the_date)
			if !the_date.nil? 
				 I18n.l the_date, :format => :short
			end
	 end
	 
	 def sortable(column, title = nil)
    title ||= column.titleize
    direction = (column == params[:sort] && params[:direction] == "asc") ? "desc" : "asc"
    link_to title, :sort => column, :direction => direction
  end
end
