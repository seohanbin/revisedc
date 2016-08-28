class Patientregist < ActiveRecord::Base
  belongs_to :dpatient
  belongs_to :dstdoctor
end
