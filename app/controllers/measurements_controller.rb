class MeasurementsController < ApplicationController

  before_action :authenticate_admin!

  def index
    @measurements = Measurement.all
  end

  def show
    @measurement = Measurement.find(params[:id])
  end

  def new
    @measurement = Measurement.new
  end

  def create
    @measurement = Measurement.create({
                                        reading: params[:reading]
                                      })
      flash[:success] = "Measurement Added"

    redirect_to "/"
  end

  def edit
    @measurement = Measurement.find(params[:id])
  end

  def update
    @measurement = Measurement.find(params[:id])
    @measurement.update({
                          reading: params[:reading]
                        })

    flash[:success] = "Measurement Updated"

    redirect_to "/measurements/#{@measurement.id}"
  end

  def destroy
    @measurement = Measurement.find(params[:id])
    @measurement.destroy

    flash[:warning] = "Measurement has been DELETED"

    redirect_to "/"
  end

end
