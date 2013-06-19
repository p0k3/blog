class Article < ActiveRecord::Base

  attr_accessible :title, :content, :summary, :description

end