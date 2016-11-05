class Chef < User
    has_many :dishes
    has_many :offers, through: :dishes
    has_many :followings
    has_many :users, through: :followings
end
