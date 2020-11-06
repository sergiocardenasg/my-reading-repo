class BookList < ActiveRecord::Base
    belongs_to :user
    has_many :books  
end