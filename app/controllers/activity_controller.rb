class ActivityController < ApplicationController

  # POST /activy
  def create
    activity = Activity.new({
      initial_hour: params["initial_hour"]
    })

    activity.save
  end
end
