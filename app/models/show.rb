class Show <ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    self.highest_rating.limit(1)
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def least_popular_show
    self.lowest_rating.first
  end



end
