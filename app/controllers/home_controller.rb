class HomeController < ApplicationController
  def index

	  if signed_in?
	    if current_dstdoctor
	      redirect_to stdoctorregists_path, notice: "의사로 로그인됨.."
	    elsif current_dpatient
	      redirect_to patientregists_path, notice: "환자로 로그인됨.."
	    end
	  end


  end
end
