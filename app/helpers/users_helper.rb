module UsersHelper
	def gravator_for(user, option = { :size => 50})
		gravator_image_tag(user.email.downcase, :alt => user.name,
												:class => 'gravator',
												:gravator =>option)
	end	
end
