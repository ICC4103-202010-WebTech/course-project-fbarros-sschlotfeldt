class InboxController < ApplicationController
  before_action :set_inbox, only: [:show, :edit, :update, :destroy]

  # GET /inbox
  # GET /inbox.json
  def index
    @inboxes = Inbox.all
  end

  # GET /inbox/1
  # GET /inbox/1.json
  def show
    @i_chat1 = Chat.where(inbox1_id:params[:id]).select("id")
    @i_chat2 = Chat.where(inbox2_id:params[:id]).select("id")
    @inbox = Inbox.find(params[:id])
    @i_message = Message.all
  end

  # GET /inbox/new
  def new
    @inbox = Inbox.new
  end

  # GET /inbox/1/edit
  def edit
  end

  # POST /inbox
  # POST /inbox.json
  def create
    @inbox = Inbox.new(inbox_params)

    respond_to do |format|
      if @inbox.save
        format.html { redirect_to @inbox, notice: 'Inbox was successfully created.' }
        format.json { render :show, status: :created, location: @inbox }
      else
        format.html { render :new }
        format.json { render json: @inbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inbox/1
  # PATCH/PUT /inbox/1.json
  def update
    respond_to do |format|
      if @inbox.update(inbox_params)
        format.html { redirect_to @inbox, notice: 'Inbox was successfully updated.' }
        format.json { render :show, status: :ok, location: @inbox }
      else
        format.html { render :edit }
        format.json { render json: @inbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inbox/1
  # DELETE /inbox/1.json
  def destroy
    @inbox.destroy
    respond_to do |format|
      format.html { redirect_to inboxes_url, notice: 'Inbox was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inbox
      @inbox = Inbox.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inbox_params
      params.fetch(:inbox, {})
    end
end
