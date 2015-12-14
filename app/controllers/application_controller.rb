# helper
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_instance, only: [:show, :edit, :update, :destroy]

  # index
  def index
    list
  end

  # /models/1
  def show
    instance
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
    instance = model.new(permitted_params)
    if instance.save
      redirect_to instance, notice: 'Created successfully'
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if instance.update(permitted_params)
      redirect_to instance, notice: model_name + ' was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    instance.destroy
    redirect_to url_for(model, :index),
                notice: "#{model_name} was successfully destroyed."
  end

  private

  # model
  def model
    model_name.singularize.constantize
  end

  # model_name
  def model_name
    params[:controller].singularize.camelize
  end

  # table
  def table
    params[:controller]
  end

  def instance
    instance_variable_get("@#{model_name}")
  end

  def instance=(value)
    instance_variable_set("@#{model_name}", value)
  end

  def list
    instance_variable_set("@#{table}", model.all)
  end

  def set_instance
    instance_variable_set("@#{model_name}", model.find(params[:id]))
  end
end
