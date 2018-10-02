class UserDecorator < Draper::Decorator
  delegate_all
	def name
		nick_name.presence || "#{user.first_name} {last_name}"
	end
	  # Define presentation-specific methods here. Helpers are accessed through
	  # `helpers` (aka `h`). You can override attributes, for example:
	  #
	  #   def created_at
	  #     helpers.content_tag :span, class: 'time' do
	  #       object.created_at.strftime("%a %m/%d/%y")
	  #     end
	  #   end

	  def avalible
	  	 balance - tasks.where(status: "active").sum(:amount)
	  end

	def nick_name
		#p 'User:'
		#p object
		object.nick_name.capitalize
	end
end
