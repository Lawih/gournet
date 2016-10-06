class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
    @user = User.find_for_oauth(env["omniauth.auth"], current_user)

    if @user.persisted? # Chequea que nuestro usuario se haya guardado en la base de datos y no sea una instancia superficial
      sign_in_and_redirect @user, event: :authentication
      set_flash_message(:notice, :success, kind: "facebook".capitalize) if is_navigational_format?
    else
      session["devise.facebook_data"] = env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end


  def google_oauth2
   # You need to implement the method below in your model (e.g. app/models/user.rb)
     #@user = User.connect_to_google(request.env["omniauth.auth"])
      @user = User.find_for_oauth(env["omniauth.auth"], current_user)

     if @user.persisted?
        sign_in_and_redirect @user, event: :authentication
       #flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
       set_flash_message(:notice, :success, kind: "Google".capitalize) if is_navigational_format?
     else
       session["devise.google_data"] = request.env["omniauth.auth"]
       redirect_to new_user_registration_url
     end
  end


 # def google_oauth2
#    @user = User.find_for_oauth(env["omniauth.auth"], current_user)

    #if @user.persisted? # Chequea que nuestro usuario se haya guardado en la base de datos y no sea una instancia superficial
      #sign_in_and_redirect @user, event: :authentication
     # set_flash_message(:notice, :success, kind: "google_oauth2".capitalize) if is_navigational_format?
    #else
     # session["devise.google_data"] = env["omniauth.auth"]
    #  redirect_to new_user_registration_url
   # end
  #end

  def after_sign_in_path_for(resource) # Revisa después de cada login si el mail del usuario es válido
      if resource.sign_in_count<2
        edit_profile_path(resource)
      else
        super resource
      end
  end

end
