class Message < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user
  belongs_to :room
=======
   belongs_to :user
   belongs_to :room
>>>>>>> master
  validates :body, presence: true, length: { minimum: 2, maximum: 1000 }

  after_create_commit { MessageBroadcastJob.perform_later(self) }

  def timestamp
    created_at.strftime('%H:%M:%S %d %B %Y')
end
end
