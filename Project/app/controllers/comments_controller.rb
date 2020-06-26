class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /comments
  # GET /comments.json

  def report_comment

  end

  def report_comment_btn
    @comment = Comment.find(params[:id])
    @comment.update(report_status: @comment.report_status + 1)
    redirect_to comments_path(@comment.event_id), notice: 'Your report was successfully submitted.'
  end

  def index
    @comments = Comment.where(event_id:params[:id])
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comments = Comment.where(event_id:@comment.event_id)
  end

  # GET /comments/new
  def new
    @comment = Comment.new
    @comment.user_id = current_user.id
    @event = Event.find(params[:event_id])
    @comment.event_id = @event.id
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to comments_path, notice: 'Comment was successfully created.'}
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    begin
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to comments_path(@comment.event_id), notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
    rescue
      flash[:alert] = "This operation could not be executed"
      redirect_back(fallback_location: root_path)
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_path(@comment.event_id), notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      begin
        @comment = Comment.find(params[:id])
      rescue
      end
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.fetch(:comment, {}).permit(:user_id, :text, :event_id, :atta)
    end
end
