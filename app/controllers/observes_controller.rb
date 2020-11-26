class ObservesController < ApplicationController
  before_action :set_obserf, only: [:show, :update, :destroy]

  # GET /observes
  def index
    @observes = Observe.includes(:questions).all
    data = []
    @observes.each do |observe|
      data << { observe: observe, questions: observe.questions }
    end
    render json: data
  end

  # GET /observes/1
  def show
    render json: @obserf
  end

  # POST /observes
  def create
    @obserf = Observe.new(obserf_params)

    if @obserf.save
      render json: @obserf, status: :created, location: @obserf
    else
      render json: @obserf.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /observes/1
  def update
    if @obserf.update(obserf_params)
      render json: @obserf
    else
      render json: @obserf.errors, status: :unprocessable_entity
    end
  end

  # DELETE /observes/1
  def destroy
    @obserf.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obserf
      @obserf = Observe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def obserf_params
      params.require(:obserf).permit(:title, :description)
    end
end
