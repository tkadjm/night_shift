class CallShiftsController < ApplicationController
  def index
    @call_shifts = CallShift.all
  end

  def show
    @call_shift = CallShift.find(params[:id])
  end

  def new
    @call_shift = CallShift.new
  end

  def create
    @call_shift = CallShift.new
    @call_shift.site_id = params[:site_id]
    @call_shift.professional_id = params[:professional_id]

    if @call_shift.save
      redirect_to "/call_shifts", :notice => "Call shift created successfully."
    else
      render 'new'
    end
  end

  def edit
    @call_shift = CallShift.find(params[:id])
  end

  def update
    @call_shift = CallShift.find(params[:id])

    @call_shift.site_id = params[:site_id]
    @call_shift.professional_id = params[:professional_id]

    if @call_shift.save
      redirect_to "/call_shifts", :notice => "Call shift updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @call_shift = CallShift.find(params[:id])

    @call_shift.destroy

    redirect_to "/call_shifts", :notice => "Call shift deleted."
  end
end
