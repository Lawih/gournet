class Admin::UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :set_type

  # GET /users
  # GET /users.json
  def index
    @users = type_class.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to admin_users_path(@user), notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to admin_user_path(@user), notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to admin_users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = type_class.find_by_username(params[:id])
      @user.becomes(User)
      #@user = type_class.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(type.underscore.to_sym).permit(:name, :lastname, :username, :birthday, :phone, :picture, :type, :category, :bio)
    end

    #  <ª For filtering using the url path
    def set_type
       @type = type
    end

    def type
        params[:type]? params[:type] : 'User'
    end

    def type_classes
        ['User', 'Diner', 'Chef', 'Admin']
    end

    def type_class
        # never trust parameters from the scary internet
        if type.in? type_classes
            type.constantize
        end
    end
    #  /ª>

    #login with facebook
    def finish_signup
        if request.patch? && params[:user] # Revisa si el request es de tipo patch, es decir, llenaron el formulario y lo ingresaron
            @user = User.find(params[:id])
            if @user.update(user_params)
                sign_in(@user, :bypass => true)
                redirect_to root_path, notice: 'Hemos guardado tu email correctamente.'
            else
                @show_errors = true
            end
        else
          @show_errors = true
        end
    end
end
