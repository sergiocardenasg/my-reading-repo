class BooksController < ApplicationController
    get '/books' do
        if logged_in?
            @books = Book.all
            erb :'books/lists'
        else
            redirect '/login'
        end
    end

    get '/books/new' do
        if logged_in?
            erb :'books/create'
        else
            redirect '/login'
        end
    end

    post '/books' do
        if logged_in?
            if params[:list] == ""
                flash[:warning] = "Please Select a List."
                redirect '/books/new'
            else
                @book = Book.new(params)
                if @book.save
                    current_user.books << @book
                    redirect "/books/#{@book.id}"
                end
            end
        else
            redirect "/books/new"
        end
    end

    get '/toplist' do
        @list = current_user.books.where(list: 'Favorite')
        if logged_in? 
            erb :'books/readlist'
        else
            redirect '/login'
        end
    end

    get '/readlist' do
        @list = current_user.books.where(list: 'Reading')
        if logged_in?
            erb :'books/readlist'
        else
            redirect '/login'
        end
    end

    get '/worstlist' do
        @list = current_user.books.where(list: 'Worst')
        if logged_in?
            erb :'books/readlist'
        else
            redirect '/login'
        end
    end

    get '/books/:id' do
        if logged_in? 
            @book = Book.find_by_id(params[:id])
            if @book.user_id == @current_user.id
                erb :'books/read'
            else
                redirect '/books'
            end
        else
            redirect '/login'
        end
    end

    get '/books/:id/edit' do
        if logged_in?
            @book = Book.find_by_id(params[:id])
            if params[:list] == ""
                flash[:warning] = "Please Select a List."
                redirect "/books/#{params[:id]}/edit"
            else
                if @book.user_id == @current_user.id
                    erb :'books/update'
                end
            end
        else
          redirect '/login'
        end
    end

    patch '/books/:id' do
        if logged_in?
            if params[:list] == ""
                flash[:warning] = "Please Select a List."
                redirect "/books/#{params[:id]}/edit"
            else
                @book = Book.find_by_id(params[:id])
                if @book.user_id == @current_user.id
                    #binding.pry
                    @book.update(params[:book])
                    redirect "/books/#{params[:id]}"
                end
            end
        else
          redirect '/login'
        end
    end

    delete '/books/:id/delete' do
        if logged_in?
            @book = Book.find_by_id(params[:id])
            if @book.user_id == @current_user.id
                @book.delete
                redirect "/books"
            end
        else
          redirect '/login'
        end
    end

end
