ActiveAdmin.register AdminUser do     
  after_create { |admin| admin.send_reset_password_instructions }
  before_destroy :raise_if_last

  index do                            
    column :email                     
    column :current_sign_in_at        
    column :last_sign_in_at           
    column :sign_in_count             
    default_actions                   
  end                                 

  def password_required?
    new_record? ? false : super
  end

  def raise_if_last
    if AdminUser.count < 2
      raise "Can't delete last admin user"
    end
  end

  filter :email                       

  form do |f|                         
    f.inputs "Admin Details" do       
      f.input :email                  
      f.input :password               
      f.input :password_confirmation  
    end                               
    f.actions                         
  end                                 
end                                   
