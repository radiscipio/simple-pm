class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: ['not-started', 'in-progresss', 'complete'] }

  STATUS_OPTIONS = [
    ['Not Started', 'not-started'],
    ['In Progress', 'in-rogress'],
    ['Complete', 'complete']
  ]
end
