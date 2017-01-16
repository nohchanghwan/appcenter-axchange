class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments #커멘트를 가지고있다 1:n에서 1을 담당

end
