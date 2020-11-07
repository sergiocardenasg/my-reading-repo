class BooksController < ApplicationController
    get '/lists' do
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

    # post '/books' do
    #     if logged_in?
    #         if params[:content] == ""
    #             redirect '/tweets/new'
    #         else
    #             @tweet = Tweet.new(params)
    #             if @tweet.save
    #                 current_user.tweets << @tweet
    #                 redirect "/tweets/#{@tweet.id}"
    #             end
    #         end
    #     else
    #         redirect to "/tweets/new"
    #     end
    # end

end
