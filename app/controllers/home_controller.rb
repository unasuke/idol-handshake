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
                current_user.profile.prev_handshake_nozomi,
                current_user.profile.prev_handshake_nico,
                current_user.profile.next_handshake_all,
                current_user.profile.next_handshake_honoka,
                current_user.profile.next_handshake_kotori,
                current_user.profile.next_handshake_umi,
                current_user.profile.next_handshake_hanayo,
                current_user.profile.next_handshake_rin,
                current_user.profile.next_handshake_maki,
                current_user.profile.next_handshake_eri,
                current_user.profile.next_handshake_nozomi,
                current_user.profile.next_handshake_nico  ]

        @qrsrc = "https://chart.googleapis.com/chart?chs=300x300&cht=qr&chl="
        for num in 0..19 do
            if arr[num] > 4
                arr[num] = 4
            end
            @qrsrc = @qrsrc + arr[num].to_s
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

    def handshake
        @user = current_user
        @profile = @user.profile
        @chart_all      =  @profile.prev_handshake_all
        @chart_honoka   =  @profile.prev_handshake_honoka
        @chart_kotori   =  @profile.prev_handshake_kotori
        @chart_umi      =  @profile.prev_handshake_umi
        @chart_hanayo   =  @profile.prev_handshake_hanayo
        @chart_rin      =  @profile.prev_handshake_rin
        @chart_maki     =  @profile.prev_handshake_maki
        @chart_eri      =  @profile.prev_handshake_eri
        @chart_nozomi   =  @profile.prev_handshake_nozomi
        @chart_nico     =  @profile.prev_handshake_nico
    end

end
