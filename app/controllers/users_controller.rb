class UsersController < ApplicationController
    
    get '/signup' do
        if logged_in?
            redirect to '/lists'
        else
            erb :'users/signup'
        end
    end

    post '/signup' do
        user_exists = User.find_by(:email => params[:email])
        if user_exists
            redirect '/userexists'
        elsif params[:email] == "" || params[:password] == ""
            redirect '/signup'
        else
            user = User.new(params)
            user.save
            session[:user_id] = user.id
            redirect '/lists'
        end
    end

    get '/login' do
        if logged_in?
            redirect '/lists'
        else
            erb :'users/login'
        end
    end

	post '/login' do
		user = User.find_by(:email => params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect '/lists'
        else
			redirect '/login'
		end
    end
    
    get '/logout' do
        if logged_in?
          session.destroy
          redirect '/login'
        else
          redirect '/'
        end
    end

end