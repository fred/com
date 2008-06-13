class AddHomePage < ActiveRecord::Migration
  def self.up
    Page.create :title => "Home", 
      :link_title => "home", 
      :permalink => "home", 
      :menu_order => 1
  end

  def self.down
  end
end
