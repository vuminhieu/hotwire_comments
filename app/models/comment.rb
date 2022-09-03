class Comment < ApplicationRecord
  belongs_to :project
  include ActionView::RecordIdentifier

  after_create_commit { broadcast_prepend_to [project, :comments], target: "#{dom_id(project)}_comments" }

end
