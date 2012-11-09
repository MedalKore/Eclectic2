class WelcomeController < ApplicationController
  


  def index
  	@title = 'Welcome'

  end

  # list_id = 5fc70fd929


  def signup

  	@first_name = params[:first_name]
  	@email = params[:email]
  	@prospect = Prospect.create(:firstname => @first_name, :email => @email)

  	respond_to do |format|
  	
  		if !@prospect.save
  			flash[:error] = @prospect.errors.full_messages
  			format.html {redirect_to :error}
  		else
        gib = Gibbon.new('a7dc350137ef0fab605f124ac5d95646-us6')
        gib.list_subscribe(:id => '5fc70fd929', :email_address => @email, :merge_vars => {:FNAME => @first_name})
  			flash[:notice] = 'Submission successful. Thank You! Please check your email for confirmation.'
  			format.html {redirect_to :thankyou}
  		end
  	end
  end

  def error
    @title = 'Welcome'
    render 'layouts/errorpage'
    
  end

  def thankyou
    render 'layouts/thank_you'
  end
end
