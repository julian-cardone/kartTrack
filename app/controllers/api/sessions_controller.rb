class Api::SessionsController < ApplicationController

    # before_action :require_logged_out, only: [:create]
    # before_action :require_logged_in, only: [:destroy]

    def show
      if current_user
        @user = current_user
        render 'api/users/show'
      else
          render json: { user: nil }
        end
      end
    
    def create
        @user = User.find_by_credentials(params[:username], params[:password])

        if @user
        login(@user)
        render 'api/users/show'
        else
        render json: { errors: ['Please enter valid credentials.'] }, 
            status: :unauthorized
        end
    end

    def destroy
        logout
        render json: { message: 'success' }
    end

end
