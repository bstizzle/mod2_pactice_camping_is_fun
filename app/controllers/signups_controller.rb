class SignupsController < ApplicationController
    def new
        @signup = Signup.new
    end

    def create
        @signup = Signup.create(signup_params)
        if @signup.save
            redirect_to camper_path(@signup.camper_id)
        else
            flash[:my_errors] = @signup.errors.full_messages 
            redirect_to new_signup_path(@signup)
        end
    end

    private

    def signup_params
        params.require(:signup).permit(:time, :activity_id, :camper_id)
    end
end
