class CamperActivitiesController < ApplicationController
  
    def new
        @signup = CamperActivity.new

        @campers = Camper.all
        @activities = Activity.all
      end
    
      def create
        @signup = CamperActivity.create(camper_activity_params)
    
        if @signup.valid?
            redirect_to camper_path(@signup.camper_id)
        else
          flash[:errors] = @signup.errors.full_messages
          redirect_to new_camper_activity_path
        end
        
      end

      private

      def camper_activity_params
        params.require(:camper_activity).permit(:camper_id, :activity_id, :hour)
      end

end # end of ca c class