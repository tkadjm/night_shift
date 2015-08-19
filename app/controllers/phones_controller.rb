class PhonesController < ApplicationController
  def index
    @phones = Phone.all
  end

  def show
    @phone = Phone.find(params[:id])
  end

  def new
    @phone = Phone.new
  end

  def create
    @phone = Phone.new
    @phone.site_id = params[:site_id]
    @phone.number = params[:number]

    if @phone.save
      redirect_to "/phones", :notice => "Phone created successfully."
    else
      render 'new'
    end
  end

  def edit
    @phone = Phone.find(params[:id])
  end

  def update
    @phone = Phone.find(params[:id])

    @phone.site_id = params[:site_id]
    @phone.number = params[:number]

    if @phone.save
      redirect_to "/phones", :notice => "Phone updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @phone = Phone.find(params[:id])

    @phone.destroy

    redirect_to "/phones", :notice => "Phone deleted."
  end
end
