class Show <ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    self.maximum(:rating).first
  end

  def self.lowest_rating
    self.minimum(:rating).first
  end

  def least_popular_show
    self.lowest_rating
  end



end
