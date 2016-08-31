class Stdoctorregist < ActiveRecord::Base
  belongs_to :dpatient
  belongs_to :dstdoctor
end
