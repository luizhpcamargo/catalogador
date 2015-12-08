#helper
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #index
  def index
    instance_variable_set("@#{params[:controller]}", model.all)
    send("@#{params[:controller]}")
  end
  #/models/1
  def show
  end

  # GET /users/new
  def new
    instance_variable_set("@#{params[:controller]}", model.new)
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    instance =  model.new(permitted_params)
    respond_to do |format|
      if variable.save
        format.html { redirect_to variable, notice: 'Created successfully' }
        format.json { render :show, status: :created, location: instance }
      else
        format.html { render :new }
        format.json { render json: variable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if instance.update(permitted_params)
        format.html { redirect_to @user, notice: "#{model_name} was successfully updated." }
        format.json { render :show, status: :ok, location: instance }
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
      format.html { redirect_to url_for(model, :index), notice: "#{model_name} was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_user
    #   @user = User.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def user_params
    #   params[:user]
    # end  #class name
  def model
    byebug
    model_name.singularize.constantize
  end
  #model_name
  def model_name
    params[:controller].singularize.camelize
  end
  #relation
  #table
  def table
    params[:controller]
  end

  def instance
    instance_variable_get("@#{model_name}")
  end

  def instance=(value)
    instance_variable_set("@#{model_name}", value)
  end

end
