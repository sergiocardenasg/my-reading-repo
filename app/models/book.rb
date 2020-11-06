class Book < ActiveRecord::Base
    belongs_to :booklist
    has_many :users, through: :booklists   
end