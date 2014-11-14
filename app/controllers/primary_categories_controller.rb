class PrimaryCategoriesController < ApplicationController
  layout 'admin_application'

  def index
    @primary_categories = PrimaryCategory.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @primary_categories }
    end
  end

  def show
    @primary_category = PrimaryCategory.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @primary_category }
    end
  end

  def new
    @primary_category = PrimaryCategory.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @primary_category }
    end
  end

  def edit
    @primary_category = PrimaryCategory.find(params[:id])
  end

  def create
    @primary_category = PrimaryCategory.new(params[:primary_category])
    respond_to do |format|
      if @primary_category.save
        format.html { redirect_to @primary_category, notice: 'Primary category was successfully created.' }
        format.json { render json: @primary_category, status: :created, location: @primary_category }
      else
        format.html { render action: "new" }
        format.json { render json: @primary_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @primary_category = PrimaryCategory.find(params[:id])
    respond_to do |format|
      if @primary_category.update_attributes(params[:primary_category])
        format.html { redirect_to @primary_category, notice: 'Primary category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @primary_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @primary_category = PrimaryCategory.find(params[:id])
    @primary_category.destroy
    respond_to do |format|
      format.html { redirect_to primary_categories_url }
      format.json { head :no_content }
    end
  end
end
