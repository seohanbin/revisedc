class HomeController < ApplicationController
  def index

	  if signed_in?
	    if current_dstdoctor
	      redirect_to stdoctorregists_path
	    elsif current_dpatient
	      redirect_to patientregists_path
	    end
	  end

  	
  end
end
