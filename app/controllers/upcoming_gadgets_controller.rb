class UpcomingGadgetsController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:create, :update]
  def create
    @upcoming_gadget = UpcomingGadget.new(upcoming_gadget_params)
    if @upcoming_gadget.save
      render json: {status: 200, passcode: (params["passcode"] + "_sub")}.to_json
    else
    end
  end

  def update
    @upcoming_gadget = UpcomingGadget.find(params[:id])

    if @upcoming_gadget.update(upcoming_gadget_params)
    else
    end
  end

  private

  def upcoming_gadget_params
    params.require(:upcoming_gadget).permit(information: {}, passcode: "")
  end
end
