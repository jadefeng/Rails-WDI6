module ApplicationHelper
	def intellinav
		nav = ''
		if @current_user.present?
			nav += "<li> Hello #{@current_user.name} </li> "
			nav += "<li>" + link_to('All users', users_path) + "</li> "
			nav += "<li>" + link_to('Edit user', edit_user_path) + "</li> "
			nav += "<li> #{ link_to('Sign out', login_path, :method => :delete, :data => {:confirm => "Are you sure?"})  }</li> "
		else 
			nav += "<li> #{ link_to('Sign Up', new_user_path) }</li> "
			nav += "<li> #{ link_to('Login', login_path) } </li> "
		end 
		nav
	end
end
