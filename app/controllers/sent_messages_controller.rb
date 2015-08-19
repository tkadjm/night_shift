class SentMessagesController < ApplicationController
  def index
    @sent_messages = SentMessage.all
  end

  def show
    @sent_message = SentMessage.find(params[:id])
  end

  def new
    @sent_message = SentMessage.new
  end

  def create
    @sent_message = SentMessage.new
    @sent_message.message_id = params[:message_id]
    @sent_message.professional_id = params[:professional_id]

    if @sent_message.save
      redirect_to "/sent_messages", :notice => "Sent message created successfully."
    else
      render 'new'
    end
  end

  def edit
    @sent_message = SentMessage.find(params[:id])
  end

  def update
    @sent_message = SentMessage.find(params[:id])

    @sent_message.message_id = params[:message_id]
    @sent_message.professional_id = params[:professional_id]

    if @sent_message.save
      redirect_to "/sent_messages", :notice => "Sent message updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @sent_message = SentMessage.find(params[:id])

    @sent_message.destroy

    redirect_to "/sent_messages", :notice => "Sent message deleted."
  end
end
