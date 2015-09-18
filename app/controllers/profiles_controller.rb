class ProfilesController < ApplicationController

    def update_serial
        @user = current_user
        @profile = @user.profile
        if @profile.update(serial_params)
            redirect_to root_path
        end
    end

    def update_prev_handshake_all
        @user = current_user
        @profile = @user.profile
        if @profile.update(prev_handshake_all_params)
            redirect_to root_path
        end
    end

    private

        def serial_params
            params.require(:profile).permit(:serial_code)
        end

        def prev_handshake_all_params
            params.require(:profile).permit(:prev_handshake_all)
        end
end
