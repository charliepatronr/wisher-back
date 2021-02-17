class UsersController < ApplicationController

    def index 

        users = User.all
        render json: users, include: '*.*'

    end 

    def show 
        user = User.find(params[:id])
        render json: user, include: '*.*'
    end 

    def create

        name = params[:name]
        email = params[:email]
        password = params[:password]
        username = params[:username]
        age = params[:age]
        address = params[:address]

        new_user = User.new(user_params(name: name, email: email, password: password, username: username, age: age, address: address))

        if new_user
            render json: user, include: '*.*'

        else 
            render json: {message: 'Could not sign you up try again'}
        end 

    end

    private 

    def user_params 
        params.require(:user).permit(*args)
    end
end
