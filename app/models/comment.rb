# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#  venue_id   :integer
#

class Comment < ApplicationRecord
  def commenter
    my_id = self.id
    matching_users = Comment.where({ :id => my_id }).first
    the_user = matching_users.author_id
    username = User.where({:id => the_user}).at(0)
    return username
  end
end
