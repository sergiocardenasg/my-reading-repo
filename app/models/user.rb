class User < ActiveRecord::Base
    has_secure_password
    has_many :books  
    @favorites = []
    @readlist = []
    @worsts = []

    def favorite_list(book)
        @favorites << book
    end

    def read_list(book)
        @readlist << book
    end

    def worst_list(book)
        @worsts << book
    end
end