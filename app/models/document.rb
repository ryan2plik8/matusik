class Document < ActiveRecord::Base
  attr_accessible :description, :title, :document
  mount_uploader :document, DocumentUploader
end
