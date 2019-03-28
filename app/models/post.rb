# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
  before_save :to_takakuda

  def to_takakuda
    self.title = title.to_takk
    self.body = body.to_takk
  end
end
