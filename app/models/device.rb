class Device < ActiveRecord::Base
  
  validates :reference, :length => {
    :minimum   => 4,
    :maximum   => 20,
    :too_short => "%{count} characters is the minimum allowed", 
    :too_long => "%{count} characters is the maximum allowed" 
  }

  validates :owner, :length => { :minimum => 2 }, :length => { :maximum => 15 }
  validates :owner, :format => { :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed" }

  validates :sn, :length => { :is => 8 }
  validates :sn, :uniqueness => { :message => "serial number is unique" }
  
  validates :category, :length => { :minimum => 4 }, :length => { :maximum => 10 }
  validates :description, :length => { :minimum => 4 }, :length => { :maximum => 20 }
  validates :delivery_date, :length => { :minimum => 4 }, :length => { :maximum => 20 }
  
  validates :reference, :owner, :sn, :category, :presence => true
  

end
