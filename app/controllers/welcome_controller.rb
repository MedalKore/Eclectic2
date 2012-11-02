class WelcomeController < ApplicationController
  

  def index
  	@title = 'Welcome'

  end

  def signup
  	@title = 'Thank You'
  	@first_name = params[:first_name]
  	@email = params[:email]
  	@prospect = Prospect.create(:firstname => @first_name, :email => @email)

  	respond_to do |format|
  	
  		if !@prospect.save
  			flash[:error] = @prospect.errors.full_messages
  			format.html {redirect_to :error}
  		else
  			flash[:notice] = 'Submission successful. Thank You!'
  			format.html {redirect_to :thankyou}
  		end
  	end
  end

  def error
    render 'layouts/errorpage'
    
  end

  def thankyou
    render 'layouts/thank_you'
  end
end
