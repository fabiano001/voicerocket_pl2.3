class RunStatsController < ApplicationController
  before_action :set_run_stat, only: [:show, :edit, :update, :destroy]

  # GET /run_stats
  # GET /run_stats.json
  def index
    @run_stats = RunStat.all
  end

  # GET /run_stats/1
  # GET /run_stats/1.json
  def show
  end

  # GET /run_stats/new
  def new
    @run_stat = RunStat.new
  end

  # GET /run_stats/1/edit
  def edit
  end

  # POST /run_stats
  # POST /run_stats.json
  def create
    @run_stat = RunStat.new(run_stat_params)

    respond_to do |format|
      if @run_stat.save
        format.html { redirect_to @run_stat, notice: 'Run stat was successfully created.' }
        format.json { render :show, status: :created, location: @run_stat }
      else
        format.html { render :new }
        format.json { render json: @run_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /run_stats/1
  # PATCH/PUT /run_stats/1.json
  def update
    respond_to do |format|
      if @run_stat.update(run_stat_params)
        format.html { redirect_to @run_stat, notice: 'Run stat was successfully updated.' }
        format.json { render :show, status: :ok, location: @run_stat }
      else
        format.html { render :edit }
        format.json { render json: @run_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /run_stats/1
  # DELETE /run_stats/1.json
  def destroy
    @run_stat.destroy
    respond_to do |format|
      format.html { redirect_to run_stats_url, notice: 'Run stat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_run_stat
      @run_stat = RunStat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def run_stat_params
      params.require(:run_stat).permit(:run_id, :live_answer, :machine_answer, :do_not_call, :no_answer, :carrier_error, :busy_signal, :total_cost, :total_called, :total_left_to_call, :successful_contacts, :unsuccessful_contacts)
    end
end
