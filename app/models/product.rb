class Product < ActiveRecord::Base
  attr_accessible :Site_id, :address, :agency_name, :city, :phone_number, :state, :zip_code

  def self.search(search)  
    if search  
      where('Site_id LIKE ?', "%#{search}%")  
    else  
      scoped  
    end  
  end 
end
