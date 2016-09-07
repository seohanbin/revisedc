class Dpatients::RegistrationsController < Devise::RegistrationsController
    # Override the action you want here.
  # def create
  #   super do |resource|

  #   end
  # end



  private
  #디바이스 커스텀컨트롤러
  def sign_up_params
    params.require(:dpatient).permit(
      :email,
      :password,
      :password_confirmation,

      :spstr,
      :name,
      :nickname,
      :phonenum,
      :age,
      :gender,
      :birth,
      :agreement,

      :pmhistory,
      :careerjob,
      :location

      #:admin # 쉼표추가, 어드민 화이트 리스트(임시로)
      )
  end

  def account_update_params
    params.require(:dpatient).permit(
      #:email,
      :password,
      :password_confirmation,
      :current_password,

      #:spstr,
      #:name,
      :nickname,
      :phonenum,
      :age,
      #:gender,
      #:birth,
      #:agreement,

      :pmhistory,
      :careerjob,
      :location
      )
  end

end
