module ApplicationHelper
	
	def gravatar_for(user, options = { size: 200})
	    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
	    size = options[:size]
	    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
	    image_tag(gravatar_url, alt: user.name, class: "border-radius-50")
  	end

  # we are rendering all the text as HTML
  	def markdown_to_html(text)
  		Kramdown::Document.new(text,  input: "GFM").to_html
  	end

  # bool return method which tells if user is authorized	
  	def trade_author(trade)
  		user_signed_in? && current_user.id == trade.user_id
  	end

end
