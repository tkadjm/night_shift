class ReceivedMessagesController < ApplicationController
  def index
    @received_messages = ReceivedMessage.all
  end

  def show
    @received_message = ReceivedMessage.find(params[:id])
  end

  def new
    @received_message = ReceivedMessage.new
  end

  def create
    @received_message = ReceivedMessage.new
    @received_message.status = params[:status]
    @received_message.message_id = params[:message_id]
    @received_message.professional_id = params[:professional_id]

    if @received_message.save
      redirect_to "/received_messages", :notice => "Received message created successfully."
    else
      render 'new'
    end
  end

  def edit
    @received_message = ReceivedMessage.find(params[:id])
  end

  def update
    @received_message = ReceivedMessage.find(params[:id])

    @received_message.status = params[:status]
    @received_message.message_id = params[:message_id]
    @received_message.professional_id = params[:professional_id]

    if @received_message.save
      redirect_to "/received_messages", :notice => "Received message updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @received_message = ReceivedMessage.find(params[:id])

    @received_message.destroy

    redirect_to "/received_messages", :notice => "Received message deleted."
  end
end
