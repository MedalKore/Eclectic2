class Prospect < ActiveRecord::Base
  attr_accessible :email, :firstname
  validates :firstname, :presence => true
  validates :email, :presence => true, :uniqueness => true, :format => {:with => /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i, :on => :create, :message => 'must use a correctly formatted email address.'}


end
