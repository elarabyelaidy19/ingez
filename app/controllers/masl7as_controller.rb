class Masl7asController < ApplicationController
  before_action :set_masl7a, only: %i[ show edit update destroy ]

  # GET /masl7as or /masl7as.json
  def index
    @masl7as = Masl7a.all
  end

  # GET /masl7as/1 or /masl7as/1.json
  def show
  end

  # GET /masl7as/new
  def new
    @masl7a = Masl7a.new
  end

  # GET /masl7as/1/edit
  def edit
  end

  # POST /masl7as or /masl7as.json
  def create
    @masl7a = Masl7a.new(masl7a_params)

    respond_to do |format|
      if @masl7a.save
        format.html { redirect_to @masl7a, notice: "Masl7a was successfully created." }
        format.json { render :show, status: :created, location: @masl7a }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @masl7a.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /masl7as/1 or /masl7as/1.json
  def update
    respond_to do |format|
      if @masl7a.update(masl7a_params)
        format.html { redirect_to @masl7a, notice: "Masl7a was successfully updated." }
        format.json { render :show, status: :ok, location: @masl7a }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @masl7a.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /masl7as/1 or /masl7as/1.json
  def destroy
    @masl7a.destroy
    respond_to do |format|
      format.html { redirect_to masl7as_url, notice: "Masl7a was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_masl7a
      @masl7a = Masl7a.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def masl7a_params
      params.require(:masl7a).permit(:name, :description)
    end
end
