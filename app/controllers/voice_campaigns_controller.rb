class VoiceCampaignsController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_voice_campaign, only: [:show, :edit, :update, :destroy]

  # GET /voice_campaigns
  # GET /voice_campaigns.json
  def index
    @voice_campaigns = VoiceCampaign.all
  end

  # GET /voice_campaigns/1
  # GET /voice_campaigns/1.json
  def show
  end

  # GET /voice_campaigns/new
  def new
    @voice_campaign = VoiceCampaign.new
  end

  # GET /voice_campaigns/1/edit
  def edit
  end

  # POST /voice_campaigns
  # POST /voice_campaigns.json
  def create
    @voice_campaign = VoiceCampaign.new(voice_campaign_params)
    @voice_campaign.user = current_user

    respond_to do |format|
      if @voice_campaign.save
        format.html { redirect_to @voice_campaign, notice: 'Voice campaign was successfully created.' }
        format.json { render :show, status: :created, location: @voice_campaign }
      else
        format.html { render :new }
        format.json { render json: @voice_campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voice_campaigns/1
  # PATCH/PUT /voice_campaigns/1.json
  def update
    respond_to do |format|
      if @voice_campaign.update(voice_campaign_params)
        format.html { redirect_to @voice_campaign, notice: 'Voice campaign was successfully updated.' }
        format.json { render :show, status: :ok, location: @voice_campaign }
      else
        format.html { render :edit }
        format.json { render json: @voice_campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voice_campaigns/1
  # DELETE /voice_campaigns/1.json
  def destroy
    @voice_campaign.destroy
    respond_to do |format|
      format.html { redirect_to voice_campaigns_url, notice: 'Voice campaign was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voice_campaign
      @voice_campaign = VoiceCampaign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voice_campaign_params
      params.require(:voice_campaign).permit(:name, :user_id)
    end
end
