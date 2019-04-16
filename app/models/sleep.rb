class Sleep < ApplicationRecord
  belongs_to :user

  def sleeping?
    end_time.nil?
  end
end
