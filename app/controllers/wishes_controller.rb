class WishesController < ApplicationController

    def index 
        
        wishes = Wish.all
        render json: wishes, include: '*.*'


    end 


    def create 
        
        name = params[:name]
        description = params[:description]
        img = params[:img]
        price = params[:price]
        url = params[:url]
        user_id = params[:user_id]
        byebug
        user = User.find(user_id)
        byebug
        wish = Wish.new(wish_params(name: name, description: description, img: img, price: price, url: url, user_id: user_id))
        byebug
        if wish
            wish.save
            user.wishes << wish
            render json: wish, include: '*.*'
        else 
            render json: {message: 'Wish could not be added'}
        end 

    end 

    def show 

        wish = Wish.find(params[:id])
        render json: wish, include: '*.*'

    end 

    def update 

        wish = Wish.find(params[:id])

        name = params[:name]
        description = params[:description]
        img = params[:img]
        price = params[:price]
        url = params[:url]

        name ||= wish.name
        description ||= wish.description
        img ||= wish.img
        price ||= wish.price
        url ||= wish.url


        if wish.update(wish_params(name: name, description: description, img: img, price: price, url:url))
            render json: {message: 'Wish has been updated'}
            
        end

    end

    def destroy 

        wish = Wish.find(params[:id])
        wish.destroy
        render json: {message: 'Wish has been deleted'}
    end


    private 

    def wish_params(*args)
        params.require(:wish).permit(*args)
    end 
    
end
