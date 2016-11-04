class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook, :google_oauth2], :authentication_keys => [:login]
  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'username'
  #attr_accessor :login

  has_many :identity, dependent: :delete_all
  has_many :oders

  has_many :followings
  has_many :chefs, through: :followings

  has_and_belongs_to_many :allergies, join_table: :user_allergies
  has_many :dish_evaluations

  has_many :favorite_dishes#ADD AL
  has_many :dishes, through: :favorite_dishes#ADD AL
  #has_and_belongs_to_many :dishes, join_table: :favorite_dishes #ADD AL

  has_many :addresses

  #if you want email to be case insensitive, you should add
  validates :username , presence: true , confirmation: true
  # Validamos que el identificador tenga entre 8 a 12 caracteres
  validates :username, length: { in: 4..100 ,message: "muy corto"}
  # Validamos que el email sea unico
  validates :username, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
  #Validar que nombre de usuario no contenga @
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true
  #validates :phone , presence: false, confirmation: false

  def to_param
    username
  end

  def self.types
    %w(Diner Chef Admin)
  end

  def login=(login)
    @login = login
  end

  def login
    @login || self.username || self.email
  end

  def self.find_for_database_authentication(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      elsif conditions.has_key?(:username) || conditions.has_key?(:email)
        where(conditions.to_h).first
      end
    end

  #Login with facebook
  def self.find_for_oauth(auth, signed_in_resource = nil)
    identity = Identity.find_for_oauth(auth)
    user = signed_in_resource ? signed_in_resource : identity.user

    if user.nil?
      email = auth.info.email
      user = User.find_by(email: email) if email
      username = auth.info.username

      data = auth[:info][:nickname]
      # Create the user if it's a new registration
      if user.nil?
         password = Devise.friendly_token[0,20]
        if auth.provider == 'facebook'
          user = User.new(
            email: email ? email : "#{auth.uid}@change-me.com",
            username: username ? username : "#{auth.uid}",
            picture: auth.info.image + "?type=large",
            name: auth.info.name,
            lastname: data,
            password: password,
            birthday: auth.info.birthday,
            password_confirmation: password
          )
        elsif auth.provider == 'google_oauth2'
          user = User.new(
            email: email ? email : "#{auth.uid}@change-me.com",
            username: username ? username : "#{auth.uid}",
            picture: auth.info.image,
            name: auth.info.first_name,
            lastname: auth.info.last_name,
            birthday: auth.info.birthday,
            password: password,
            password_confirmation: password
          )
        end
      end
      user.save!
    end

    if identity.user != user
      identity.user = user
      identity.save!
    end
    user
  end

  def self.connect_to_google(auth)
     data = auth.info
     where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
       user.email = data["email"]
       user.password = Devise.friendly_token[0,20]
       user.first_name = data["first_name"]
       user.last_name = data["last_name"]
       user.avatar = process_uri(data["image"])
     end
  end

  def email_verified?
    if self.email
      if self.email.split('@')[1] == 'change-me.com'
        return false
      else
        return true
      end
    else
      return false
    end
  end


end
