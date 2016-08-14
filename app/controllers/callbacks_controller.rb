class CallbacksController < ApplicationController

  def facebook
    @user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @user
  end
end

#request.env["omniauth.auth"]

#<OmniAuth::AuthHash credentials=#<OmniAuth::AuthHash 
#expires=true expires_at=1467294113 
#token="EAAYQBq5BTJ4BAKg4uFaxiT1U3AKzNFjAlSvKNrFvQS09TqwuZC33eUWrSs71qVgXLvisONGLLjZBtanQIud0Cu50ZB8xERqFn9hcGuRroUX2P3t0oDcZBVoPdrNw51JeDrhWYUVX6ZCZC96p5bxwe0wsZAhmX0rS0sZD"> 
#extra=#<OmniAuth::AuthHash 
#raw_info=#<OmniAuth::AuthHash 
	#email="sunshine.alex@hotmail.com" 
	#id="1158361500862093" 
	#name="Sasha Mussich">> 
#info=#<OmniAuth::AuthHash::InfoHash 
	#email="sunshine.alex@hotmail.com" 
	#image="http://graph.facebook.com/1158361500862093/picture" 
	#name="Sasha Mussich"> 
	#provider="facebook" 
	#uid="1158361500862093">