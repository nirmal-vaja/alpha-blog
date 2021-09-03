module ApplicationHelper
  def gravatar_for(user, options = {size: 80})
    size = options[:size]
    #getting the email address of the user from the user object
    email_address = user.email.downcase
    # creating a MD5 hash
    hash = Digest::MD5.hexdigest(email_address)
    # compiling a URL which can be used in <img src= "RIGHT HERE">
    gravatar_url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"
    image_tag(gravatar_url, alt:  user.username, class: "rounded shadow mx-auto d-block")
  end
end
