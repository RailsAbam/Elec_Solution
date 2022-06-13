class ElecSolutionsController < ApplicationController
  before_action :set_elec_solution, only: %i[ show edit update destroy ]

  # GET /elec_solutions or /elec_solutions.json
  def index
    @elec_solutions = ElecSolution.all
  end

  # GET /elec_solutions/1 or /elec_solutions/1.json
  def show
  end

  # GET /elec_solutions/new
  def new
    @elec_solution = ElecSolution.new
  end

  # GET /elec_solutions/1/edit
  def edit
  end

  # POST /elec_solutions or /elec_solutions.json
  def create
    @elec_solution = ElecSolution.new(elec_solution_params)

    respond_to do |format|
      if @elec_solution.save
        format.html { redirect_to elec_solution_url(@elec_solution), notice: "Elec solution was successfully created." }
        format.json { render :show, status: :created, location: @elec_solution }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @elec_solution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /elec_solutions/1 or /elec_solutions/1.json
  def update
    respond_to do |format|
      if @elec_solution.update(elec_solution_params)
        format.html { redirect_to elec_solution_url(@elec_solution), notice: "Elec solution was successfully updated." }
        format.json { render :show, status: :ok, location: @elec_solution }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @elec_solution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elec_solutions/1 or /elec_solutions/1.json
  def destroy
    @elec_solution.destroy

    respond_to do |format|
      format.html { redirect_to elec_solutions_url, notice: "Elec solution was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_elec_solution
      @elec_solution = ElecSolution.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def elec_solution_params
      params.require(:elec_solution).permit(:first_name, :last_name, :email, :phone, :state)
    end
end
