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
                    case params["list"]
                    when "favorite"
                        current_user.favorite_list(@book)
                        redirect "/books/#{@book.id}"
                    when "reading"
                        current_user.read_list(@book)
                        redirect "/books/#{@book.id}"
                    when "worsts"
                        current_user.worst_list(@book)
                        redirect "/books/#{@book.id}"
                    end
                end
            end
        else
            redirect to "/books/new"
        end
    end

    get '/books/:id' do
        if logged_in?
            @book = Book.find_by_id(params[:id])
            erb :'books/read'
        else
            redirect '/login'
        end
    end

    delete '/books/:id/delete' do
        if logged_in?
            @book = Book.find_by_id(params[:id])
            if @book.user_id == @book.id
                @book.delete
                redirect "/books"
            end
        else
          redirect '/login'
        end
    end

end
