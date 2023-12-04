class Task < ApplicationRecord
    before_save :set_dateconclusion_if_completed, if: :completed_changed?
  
    validates :completed, inclusion: { in: [true, false] }, allow_nil: true #Permitir que o campo seja null ao criar
  
    private
  
    def set_dateconclusion_if_completed
      self.dateconclusion = completed? ? Time.zone.now : nil
    end
  end
  