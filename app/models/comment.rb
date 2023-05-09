class Comment < ApplicationRecord
  belongs_to :teacher  #,dependent: :destroy
end
