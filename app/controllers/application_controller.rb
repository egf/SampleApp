class ApplicationController < ActionController::Base
  protect_from_forgery
  def index2  
	render('layouts/application.html')
	#render('book/list.html')
   end
end
