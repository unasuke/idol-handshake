class DevelopController < ApplicationController
    
    def count_select
        @user = current_user
        @profile = @user.profile
    end

end
