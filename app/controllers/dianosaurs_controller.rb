class DianosaursController < ApplicationController
  before_action :set_dianosaur, only: [:show, :edit, :update, :destroy]

  # GET /dianosaurs
  # GET /dianosaurs.json
  def index
    @dianosaurs = Dianosaur.all
  end

  # GET /dianosaurs/1
  # GET /dianosaurs/1.json
  def show
  end

  # GET /dianosaurs/new
  def new
    @dianosaur = Dianosaur.new
  end

  # GET /dianosaurs/1/edit
  def edit
  end

  # POST /dianosaurs
  # POST /dianosaurs.json
  def create
    @dianosaur = Dianosaur.new(dianosaur_params)

    respond_to do |format|
      if @dianosaur.save
        format.html { redirect_to @dianosaur, notice: 'Dianosaur was successfully created.' }
        format.json { render :show, status: :created, location: @dianosaur }
      else
        format.html { render :new }
        format.json { render json: @dianosaur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dianosaurs/1
  # PATCH/PUT /dianosaurs/1.json
  def update
    respond_to do |format|
      if @dianosaur.update(dianosaur_params)
        format.html { redirect_to @dianosaur, notice: 'Dianosaur was successfully updated.' }
        format.json { render :show, status: :ok, location: @dianosaur }
      else
        format.html { render :edit }
        format.json { render json: @dianosaur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dianosaurs/1
  # DELETE /dianosaurs/1.json
  def destroy
    @dianosaur.destroy
    respond_to do |format|
      format.html { redirect_to dianosaurs_url, notice: 'Dianosaur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dianosaur
      @dianosaur = Dianosaur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dianosaur_params
      params.require(:dianosaur).permit(:name, :genus, :description, :period)
    end
end
