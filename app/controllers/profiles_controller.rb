class ProfilesController < ApplicationController

    def edit
        @project = Project.find(params[:id])
    end

end
