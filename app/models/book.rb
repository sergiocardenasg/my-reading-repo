class Book < ActiveRecord::Base
    belongs_to :user
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