class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    # profileとの1:1ヒモ付
    has_one :profile
    before_create :build_default_profile
    private
    def build_default_profile
        build_profile
        true
    end
end
