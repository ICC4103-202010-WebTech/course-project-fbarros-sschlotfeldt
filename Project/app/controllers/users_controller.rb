class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /users
  # GET /users.json
  def accept_invite
    @event_m = EventM.create!(user_id: current_user.id, event_id: params[:event_id])
    redirect_to user_path(current_user.id)
  end

  def index
    @users = User.search(params[:search])
  end

  def start_chat
    @all_chats = Chat.where("inbox1_id = ? AND inbox2_id = ?", params[:inbox2_id], params[:inbox1_id] )
    if @all_chats.first == nil
      @all_chats2 = Chat.where("inbox1_id = ? AND inbox2_id = ?", params[:inbox1_id], params[:inbox2_id] )
      if @all_chats2.first == nil
        @chat = Chat.create!(inbox1_id: params[:inbox1_id], inbox2_id: params[:inbox2_id])
        redirect_to chat_path(@chat.id)
      else
        redirect_to chat_path(@all_chats2.ids)
      end
    else
      redirect_to chat_path(@all_chats.ids)
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user_o = Organization.all
    @user_events = Event.where("user_id = ?", @user.id)
    @assisting_events = EventM.joins(:event).where(user_id: current_user.id)
    @pi= Invite.where(user_id: current_user.id)
    @event_members= EventM.all
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # GET /users/information/1
  def information
    @user=User.find(params[:id])
  end
  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    Inbox.create!(user_id:@user.id)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find((params[:id]))
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.fetch(:user, {}).permit(:userName,:name, :lastName, :bio, :address,  :email, :password, :admin, :user_pic)
    end
end
