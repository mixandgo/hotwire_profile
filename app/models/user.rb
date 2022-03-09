class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  PROFILE_FIELDS = %i[name bio age dob phone country city zip address].freeze

  def profile_complete?
    profile_complete == 100
  end

  def profile_complete
    fields_complete.zero? ? 10 : percent_complete
  end

  def missing_profile_section
    PROFILE_FIELDS.select { |f| __send__(f).blank? }.first
  end

  private

    def fields_complete
      Float(PROFILE_FIELDS.count { |f| __send__(f).present? })
    end

    def percent_complete
      fields_complete / fields_total * 100.0
    end

    def fields_total
      Float(PROFILE_FIELDS.count)
    end
end
