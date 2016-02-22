class Users::RegistrationsControler < Devise::RegistrationsController
    
    def create
        super do |resource|
            if params[:plan]
                resource.plan_id = params[:plan]
                if resource.plan_id == 2
                    resourc3.save_with_payment
                else
                    resource.save
                end 
            end 
        end
    end 
end 