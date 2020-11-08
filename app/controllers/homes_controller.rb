class HomesController < ApplicationController
  def top
  end

  def new_guest
    guest = User.find_or_create_by!(email: 'test@test.com') do |user|
      guest.password = SecureRandom.urlsafe_base64
    end
    sign_in guest
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end
