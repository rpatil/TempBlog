class SeriesController < ApplicationController

  layout 'admin_application'
  def index
    @series = Series.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @series }
    end
  end

  def show
    @series = Series.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @series }
    end
  end

  def new
    @series = Series.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @series }
    end
  end

  def edit
    @series = Series.find(params[:id])
  end

  def create
    @series = Series.new(params[:series])
    respond_to do |format|
      if @series.save
        format.html { redirect_to @series, notice: 'Series was successfully created.' }
        format.json { render json: @series, status: :created, location: @series }
      else
        format.html { render action: "new" }
        format.json { render json: @series.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @series = Series.find(params[:id])

    respond_to do |format|
      if @series.update_attributes(params[:series])
        format.html { redirect_to @series, notice: 'Series was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @series.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @series = Series.find(params[:id])
    @series.destroy

    respond_to do |format|
      format.html { redirect_to series_index_url }
      format.json { head :no_content }
    end
  end
end
