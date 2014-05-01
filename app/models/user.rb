class User < ActiveRecord::Base
 attr_accessible :first_name, :last_name, :gender, :college, :dept, :sem, :getting_laptop, :city, :state, :email, :phone, :previous_camp 
 validates_presence_of :first_name, :gender, :college, :dept, :sem, :getting_laptop, :city, :state, :email, :phone, :previous_camp 
end
