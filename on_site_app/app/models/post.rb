class Post < ApplicationRecord
  acts_as_votable

  validates :content, presence: true, length: { maximum: 320,
  too_long: "%{count} characters is the maximum allowed" }

end

# @post = Post.new(:title => 'my post!')
# @post.save

# @post.liked_by @session
# @post.votes_for.size # => 1

# @post.votes_for.up.by_type(User)
# @post.votes_for.down
# @user1.votes.up
# @user1.votes.down
# @user1.votes.up.by_type(Post)
