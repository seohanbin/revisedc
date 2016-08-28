class Dstdoctor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :patientregists
  has_many :stdoctorregists

  has_many :dpatients, through: :patientregists
  #has_many :dpatients, through: :stdoctorregists
end
