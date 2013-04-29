module Noticias::ApplicationHelper
	def menu(title,path,image)
		link_to raw("#{title}<i class='#{image}'></i>"),path,class: "nav-header active" 
	end
	def toggle_menu(title,path,image)
		link_to raw("<i class='#{image}'></i>#{title}<span class='label sidebar-label label-info'><i class='icon-angle-down'></i> </span>"),path,class: "nav-header",data:{toggle: "collapse"}
	end

	def mensages(path,titulo,cuerpo,tiempo)
		link_to raw("<div class='info'>#{titulo}<span class='timer'>#{tiempo}</span></div><div class='message'>#{cuerpo}</div>"),path                           
	end

	def num_alerts(num)
		link_to raw("<div class='notify'>#{num}</div>"),"#",role: "button",class: "dropdown-toggle", data:{toggle:"dropdown"}
	end
end