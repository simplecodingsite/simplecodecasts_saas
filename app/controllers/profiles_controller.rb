class ProfilesController < ApplicationController
    def  new 
        # form where each user can fill out their own profile.
        @user = User.find( params[:user_id] )
        @profile = @user.build_profiles
    end 
end 