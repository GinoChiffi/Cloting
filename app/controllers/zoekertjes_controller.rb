class ZoekertjesController < ApplicationController
  before_action :set_zoekertje, only: [:show, :edit, :update, :destroy]

  # GET /zoekertjes
  # GET /zoekertjes.json
  def index
    @zoekertjes = Zoekertje.all
  end

  # GET /zoekertjes/1
  # GET /zoekertjes/1.json
  def show
  end

  # GET /zoekertjes/new
  def new
    @zoekertje = Zoekertje.new
  end

  # GET /zoekertjes/1/edit
  def edit
  end

  # POST /zoekertjes
  # POST /zoekertjes.json
  def create
    @zoekertje = Zoekertje.new(zoekertje_params)

    respond_to do |format|
      if @zoekertje.save
        format.html { redirect_to @zoekertje, notice: 'Zoekertje was successfully created.' }
        format.json { render :show, status: :created, location: @zoekertje }
      else
        format.html { render :new }
        format.json { render json: @zoekertje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zoekertjes/1
  # PATCH/PUT /zoekertjes/1.json
  def update
    respond_to do |format|
      if @zoekertje.update(zoekertje_params)
        format.html { redirect_to @zoekertje, notice: 'Zoekertje was successfully updated.' }
        format.json { render :show, status: :ok, location: @zoekertje }
      else
        format.html { render :edit }
        format.json { render json: @zoekertje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zoekertjes/1
  # DELETE /zoekertjes/1.json
  def destroy
    @zoekertje.destroy
    respond_to do |format|
      format.html { redirect_to zoekertjes_url, notice: 'Zoekertje was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zoekertje
      @zoekertje = Zoekertje.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zoekertje_params
      params.require(:zoekertje).permit(:title, :description)
    end
end
