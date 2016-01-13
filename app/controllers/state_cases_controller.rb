class StateCasesController < ApplicationController
  before_action :set_state_case, only: [:show, :edit, :update, :destroy]

  # GET /state_cases
  # GET /state_cases.json
  def index
    @state_cases = StateCase.all
  end

  # GET /state_cases/1
  # GET /state_cases/1.json
  def show
  end

  # GET /state_cases/new
  def new
    @state_case = StateCase.new
  end

  # GET /state_cases/1/edit
  def edit
  end

  # POST /state_cases
  # POST /state_cases.json
  def create
    @state_case = StateCase.new(state_case_params)

    respond_to do |format|
      if @state_case.save
        format.html { redirect_to @state_case, notice: 'State case was successfully created.' }
        format.json { render :show, status: :created, location: @state_case }
      else
        format.html { render :new }
        format.json { render json: @state_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /state_cases/1
  # PATCH/PUT /state_cases/1.json
  def update
    respond_to do |format|
      if @state_case.update(state_case_params)
        format.html { redirect_to @state_case, notice: 'State case was successfully updated.' }
        format.json { render :show, status: :ok, location: @state_case }
      else
        format.html { render :edit }
        format.json { render json: @state_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /state_cases/1
  # DELETE /state_cases/1.json
  def destroy
    @state_case.destroy
    respond_to do |format|
      format.html { redirect_to state_cases_url, notice: 'State case was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_case
      @state_case = StateCase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_case_params
      params.require(:state_case).permit(:state, :punctuation)
    end
end
