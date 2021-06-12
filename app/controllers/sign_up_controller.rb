class SignUpController < ApplicationController
    
    def new
        @user = User.new
        @roles = Role.all
        @account_type = AccountType.all
        
    end

    def create
        @user = User.new(user_params)
        @account_type = AccountType.all
        @user.role_id = 1
        logger.debug "Error: #{@user.errors.full_messages}"
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path, notice: "Successfully created account"
        else
            render :new 
        end
    end

    private

    def user_params
        params.required(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :mobile_number, :account_type_id)
    end
end
