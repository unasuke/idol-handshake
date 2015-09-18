class HomeController < ApplicationController

    def index
        @user = current_user
    end

    def qrcode
        arr = [ current_user.profile.prev_handshake_all,
                current_user.profile.prev_handshake_honoka,
                current_user.profile.prev_handshake_kotori,
                current_user.profile.prev_handshake_umi,
                current_user.profile.prev_handshake_hanayo,
                current_user.profile.prev_handshake_rin,
                current_user.profile.prev_handshake_maki,
                current_user.profile.prev_handshake_eri,
                current_user.profile.prev_handshake_nico,
                current_user.profile.prev_handshake_nozomi,
                current_user.profile.next_handshake_all,
                current_user.profile.next_handshake_honoka,
                current_user.profile.next_handshake_kotori,
                current_user.profile.next_handshake_umi,
                current_user.profile.next_handshake_hanayo,
                current_user.profile.next_handshake_rin,
                current_user.profile.next_handshake_maki,
                current_user.profile.next_handshake_eri,
                current_user.profile.next_handshake_nico,
                current_user.profile.next_handshake_nozomi  ]

        @qrsrc = "https://chart.googleapis.com/chart?chs=300x300&cht=qr&chl="
        for num in 0..19 do
            @qrsrc = @qrsrc + arr[num].to_s + ","
        end
    end

    def input_serial
        @user = current_user
        @profile = @user.profile
    end

    def input_prev_count
        @user = current_user
        @profile = @user.profile
    end

    def handhake
        @user = current_user
        @profile = @user.profile
    end

end
