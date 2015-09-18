class ProfilesController < ApplicationController

    def update_serial
        @user = current_user
        @profile = @user.profile
        if @profile.update(serial_params)
            redirect_to root_path
        end
    end

    def update_prev_handshake
        @user = current_user
        @profile = @user.profile
        @profile.update(prev_handshake_all_params)
        @profile.update(prev_handshake_honoka_params)
        @profile.update(prev_handshake_kotori_params)
        @profile.update(prev_handshake_umi_params)
        @profile.update(prev_handshake_hanayo_params)
        @profile.update(prev_handshake_maki_params)
        @profile.update(prev_handshake_rin_params)
        @profile.update(prev_handshake_eri_params)
        @profile.update(prev_handshake_nico_params)
        @profile.update(prev_handshake_nozomi_params)
        redirect_to root_path
    end

    private

        def serial_params
            params.require(:profile).permit(:serial_code)
        end

        def prev_handshake_all_params
            params.require(:profile).permit(:prev_handshake_all)
        end

        def prev_handshake_honoka_params
            params.require(:profile).permit(:prev_handshake_honoka)
        end

        def prev_handshake_kotori_params
            params.require(:profile).permit(:prev_handshake_kotori)
        end

        def prev_handshake_umi_params
            params.require(:profile).permit(:prev_handshake_umi)
        end

        def prev_handshake_hanayo_params
            params.require(:profile).permit(:prev_handshake_hanayo)
        end

        def prev_handshake_maki_params
            params.require(:profile).permit(:prev_handshake_maki)
        end

        def prev_handshake_rin_params
            params.require(:profile).permit(:prev_handshake_rin)
        end

        def prev_handshake_eri_params
            params.require(:profile).permit(:prev_handshake_eri)
        end

        def prev_handshake_nico_params
            params.require(:profile).permit(:prev_handshake_nico)
        end

        def prev_handshake_nozomi_params
            params.require(:profile).permit(:prev_handshake_nozomi)
        end

end
