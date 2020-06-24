class VotesController < ApplicationController
  before_action :set_vote, only: [:show, :edit, :update, :destroy]

  # GET /votes
  # GET /votes.json
  def new_date
    Vote.create!(event_id:params[:event_id], date: params[:date], n_votes:0)
  end

  def index
    @votes = Vote.all
  end

  # GET /votes/1
  # GET /votes/1.json
  def show
    @votes = Vote.where(event_id:params[:id])
  end

  # GET /votes/new
  def new
    @vote = Vote.new
    @event = $cureent_event
    @vote.event_id = @event.id
  end

  # GET /votes/1/edit
  def edit
  end

  # POST /votes
  # POST /votes.json
  def create
      @vote = Vote.new(vote_params)

      respond_to do |format|
        if @vote.save
          format.html { redirect_to @vote, notice: 'Vote was successfully created.' }
          format.json { render :show, status: :created, location: @vote }
        else
          format.html { render :new }
          format.json { render json: @vote.errors, status: :unprocessable_entity }
        end
      end
  end

  # PATCH/PUT /votes/1
  # PATCH/PUT /votes/1.json
  def update
    respond_to do |format|
      if @vote.update(n_votes: @vote.n_votes + 1)
        format.html { redirect_to event_path($cureent_event.id), notice: 'Vote was successfully submitted' }
        format.json { render :show, status: :ok, location: @vote }
      else
        format.html { render :edit }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /votes/1
  # DELETE /votes/1.json
  def destroy
    @vote.destroy
    respond_to do |format|
      format.html { redirect_to votes_url, notice: 'Vote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote
      begin
        @vote = Vote.find(params[:id])
      rescue

      end
    end

    # Only allow a list of trusted parameters through.
    def vote_params
      params.fetch(:vote, {}).permit(:user_id, :event_id)
    end
end
