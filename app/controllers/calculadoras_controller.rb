class CalculadorasController < ApplicationController
  before_action :set_calculadora, only: [:show, :edit, :update, :destroy]

  # GET /calculadoras
  # GET /calculadoras.json
  def index
    @calculadoras = Calculadora.all
  end

  # GET /calculadoras/1
  # GET /calculadoras/1.json
  def show
  end

  # GET /calculadoras/new
  def new
    @calculadora = Calculadora.new
  end

  # GET /calculadoras/1/edit
  def edit
  end

  # POST /calculadoras
  # POST /calculadoras.json
  def create
    @calculadora = Calculadora.create(calculadora_params)
    Publisher::Sender.publish(@calculadora)
    redirect_to calculadoras_path
  end

  # PATCH/PUT /calculadoras/1
  # PATCH/PUT /calculadoras/1.json
  def update
    respond_to do |format|
      if @calculadora.update(calculadora_params)
        format.html { redirect_to @calculadora, notice: 'Calculadora was successfully updated.' }
        format.json { render :show, status: :ok, location: @calculadora }
      else
        format.html { render :edit }
        format.json { render json: @calculadora.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calculadoras/1
  # DELETE /calculadoras/1.json
  def destroy
    @calculadora.destroy
    respond_to do |format|
      format.html { redirect_to calculadoras_url, notice: 'Calculadora was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calculadora
      @calculadora = Calculadora.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def calculadora_params
      params.require(:calculadora).permit(:num1, :num2)
    end
end
