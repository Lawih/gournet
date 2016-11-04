class Chef < User
    has_many :dishes
    has_one :identities
    has_many :followings
    has_many :users, through: :followings
end
