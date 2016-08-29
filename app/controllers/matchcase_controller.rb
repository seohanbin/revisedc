class MatchcaseController < ApplicationController

  before_action :stdoctor_only, only: [:prindex, :selectpatient, :confirmpr]
  before_action :patient_only, only: [:drindex, :selectstdoctor, :confirmdr]


  # dr only
  def prindex
    # current_dpatient.patientregists.all

    # 모두에게 보이는 언매치드 전체리스트
    @prs_unmatched = Patientregist.where(completion: false, dstdoctor_id: nil)
    # 자신이 매치했지만 미완료 리스트
    @prs_matched = current_dstdoctor.patientregists.where(completion: false)
    # 자신이 선택 후 완료 리스트
    @prs_done = current_dstdoctor.patientregists.where(completion: true)

    # unmatched > undone > done
  end

  def selectpatient
    @selectedpr = Patientregist.find(params[:id])
    @selectedpr.dstdoctor_id = current_dstdoctor.id
    @selectedpr.save
    redirect_to :back, notice: "알림: c/c: #{@selectedpr.chiefcomplaint} 케이스가 자신의 케이스로 매치됨."
  end

  def confirmpr
    @selectedpr = Patientregist.find(params[:id])
    @selectedpr.completion = true
    @selectedpr.save
    redirect_to :back, notice: "알림: c/c: #{@selectedpr.chiefcomplaint} 케이스가 완료처리됨."
  end

  def eval_bydr
    
  end

  def eval_bydr_apply
    @selectedpr = Patientregist.find(params[:id])
    @selectedpr.evaluation_intby_dr = params[:score] 
    @selectedpr.evaluation_strby_dr = params[:describe]
    @selectedpr.save

    redirect_to matchcase_prindex_path

  end


  #pt only
  def drindex
    # current_dpatient.patientregists.all

    # 모두에게 보이는 언매치드 전체리스트
    @srs_unmatched = Stdoctorregist.where(completion: false, dpatient_id: nil)
    # 자신이 매치했지만 미완료 리스트
    @srs_matched = current_dpatient.stdoctorregists.where(completion: false)
    # 자신이 선택 후 완료 리스트
    @srs_done = current_dpatient.stdoctorregists.where(completion: true)
  end

  def selectstdoctor
    @selectedsr = Stdoctorregist.find(params[:id])
    @selectedsr.dpatient_id = current_dpatient.id
    @selectedsr.save
    redirect_to :back, notice: "알림: c/c: #{@selectedsr.treatsubject} 케이스가 자신의 케이스로 매치됨."
  end

  def confirmdr
    @selectedsr = Stdoctorregist.find(params[:id])
    @selectedsr.completion = true
    @selectedsr.save
    redirect_to :back, notice: "알림: c/c: #{@selectedsr.treatsubject} 케이스가 완료처리됨."
  end

  def eval_bypt
    
  end
  
  private

    def stdoctor_only

      if signed_in?
        if current_dstdoctor
          # 허용됨.
        elsif current_dpatient
          redirect_to :root, notice: 'stdoctor 전용.'
        end
      else
        redirect_to :root, notice: '로그인 필요.'
      end
      
    end

    def patient_only

      if signed_in?
        if current_dstdoctor
          redirect_to :root, notice: 'patient 전용.'
        elsif current_dpatient
          # 허용됨.
        end
      else
        redirect_to :root, notice: '로그인 필요.'
      end
      
    end


end
