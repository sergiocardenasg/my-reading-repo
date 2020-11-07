class BooksController < ApplicationController
    get '/lists' do
        if logged_in?
            @books = Book.all
            erb :'books/lists'
        else
            redirect '/login'
        end
    end

end
