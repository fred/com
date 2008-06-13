class Page < ActiveRecord::Base
  
  validates_presence_of :title, :link_title, :permalink
  validates_uniqueness_of :title, :link_title, :permalink
  validates_numericality_of :menu_order
  validates_length_of :menu_order, :in => 2..16, :allow_nil => false
  
  before_save :clear_permalink
  
  
  def self.find_permalink(permalink)
    begin
      res = self.find(permalink)
      res
    rescue 
      self.find(:first, :conditions => ["permalink = ?", permalink])
    end
  end
  
  
  def clear_permalink
      self.permalink = permalink_for(self.permalink.to_s)
  end
  
  def permalink_for(str)
    PermalinkFu.escape(str)
  end
  
end
