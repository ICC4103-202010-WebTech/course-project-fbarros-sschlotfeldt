class InboxController < ApplicationController
  before_action :set_inbox, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /inbox
  # GET /inbox.json
  def open_chat
    redirect_to chat_path(params[:chat_id])
    for msg in Message.where(chat_id: params[:chat_id])
      if msg.msg_status == false
        msg.update(msg_status:true)
      else
      end
    end
  end

  def index
    @inboxes = Inbox.all
  end

  # GET /inbox/1
  # GET /inbox/1.json
  def show
    @inbox_c = Chat.where("inbox1_id = ? OR inbox2_id = ?", current_user.id, current_user.id)
    @inbox_msg = Message.where(chat_id:@inbox_c.ids).order(created_at: :desc)
    @inbox_u = User.all
    @inbox = Inbox.find(current_user.id)
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
