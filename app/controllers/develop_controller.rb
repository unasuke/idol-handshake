class DevelopController < ApplicationController

    def develop
        @user = current_user
    end

end
