class Prospect < ActiveRecord::Base
  attr_accessible :email, :firstname
  validates :firstname, :presence => true
  validates :email, :presence => true, :uniqueness => true, :format => {:with => /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i, :on => :create, :message => 'must use a correctly formatted email address.'}
  after_save :send_to_mailchimp

  

  protected

  def send_to_mailchimp

  	list = Prospect.find(:last)
  	firstname = list.firstname
  	email = list.email
  	gib = Gibbon.new('a7dc350137ef0fab605f124ac5d95646-us6')
  	gib.list_subscribe({:id => '5fc70fd929', :email_address => email, :merge_vars => {:FNAME => firstname}})

  end
end
