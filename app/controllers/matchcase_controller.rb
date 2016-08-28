class MatchcaseController < ApplicationController

  before_action :stdoctor_only, only: [:prindex, :selectpatient, :confirmpr]
  before_action :patient_only, only: [:drindex, :selectstdoctor, :confirmdr]

  def prindex

  end

  def selectpatient
  end

  def confirmpr
  end


  def drindex
  end

  def selectstdoctor
  end

  def confirmdr
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
