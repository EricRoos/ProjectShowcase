class ProjectSubmission < ApplicationRecord
  include AASM

  belongs_to :project
  belongs_to :user

  aasm column: :state do
    state :started, initial: true
    state :ready_for_review
    state :requesting_help
    state :closed

    event :submit_for_review do
      transitions from: :started, to: :ready_for_review
    end

    event :ask_for_help do
      transitions from: :started, to: :requesting_help
    end

    event :resume_work do
      transitions from: :requesting_help, to: :started
    end

    event :rework do
      transitions from: :ready_for_review, to: :started
      transitions from: :closed, to: :started
    end

    event :close do
      transitions from: [:started, :ready_for_review], to: :closed
    end

  end
end
