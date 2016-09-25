class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook], :authentication_keys => [:login]
  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'username'
  #attr_accessor :login
  
  def login=(login)
    @login = login
  end

  def login
    @login || self.username || self.email
  end

  #if you want email to be case insensitive, you should add 
  validates :username , presence: true , confirmation: true
   # Validamos que el identificador tenga entre 8 a 12 caracteres
  validates :username, length: { in: 4..100 , message: "debe ser mayor a 4 caracteres"}
  # Validamos que el email sea unico
  validates :username, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}

  #Validar que nombre de usuario no contenga @
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true
  # when allowing distinct User records with, e.g., "username" and "UserName"...
  #validates :phone , presence: false, confirmation: false
  
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
      username = auth.info.UserName
 
      # Create the user if it's a new registration
      if user.nil?
         password = Devise.friendly_token[0,20]
        if auth.provider == 'facebook'
          user = User.new(
            email: email ? email : "#{auth.uid}@change-me.com",
            username: username ? username : "#{auth.uid}",
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
