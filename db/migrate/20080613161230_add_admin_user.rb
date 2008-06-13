class AddAdminUser < ActiveRecord::Migration
  def self.up
    user = User.new
    user.login = "admin"
    user.email = "admin@comizu.com"
    user.name = "Site Administrator"
    user.password = "administrador"
    user.password_confirmation = "administrador"
    user.save
    execute("UPDATE users set admin=1 where login = 'admin'")
  end

  def self.down
  end
end
