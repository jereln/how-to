class StepsController < ApplicationController
  before_action :set_step, only: [:show, :edit, :update, :destroy]
  before_action :load_list

  # GET /steps
  def index
    @list = List.find(params[:list_id])
    @steps = @list.steps
  end

  # GET /steps/1
  def show
  end

  # GET /steps/new
  def new
    @step = @list.steps.new
  end

  # GET /steps/1/edit
  def edit
    @list = List.find(params[:list_id])
  end

  # POST /steps
  def create
    @list = List.find(params[:list_id])
    @step = @list.steps.build(step_params)
    if @step.save
      redirect_to list_url(@list), notice: 'Step was successfully created'
    else
      render :new
    end
  end

  # PATCH/PUT /steps/1
  def update
    if @step.update(step_params)
      redirect_to list_path(@step.list), notice: 'Step was successfully updated'
    else
      render :edit
    end
  end

  # DELETE /steps/1
  def destroy
    @step.destroy
    redirect_to list_path(@step.list), notice: 'Step was successfully destroyed'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_step
    @step = Step.find(params[:id])
  end

  def load_list
    @list = List.find(params[:list_id])
  end

  # Only allow a trusted parameter "white list" through.
  def step_params
    params.require(:step).permit(:name)
  end
end
