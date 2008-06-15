class AddSettingsValues < ActiveRecord::Migration
  def self.up
    Setting.set('info_email', 'jmizurieta@comizu.com')
    Setting.set('notifications_email', 'jmizurieta@comizu.com')
    Setting.set('admin_email', 'admin@comizu.com')
    Setting.set('meta_keywords', 'Comizu, VSAT, Maintenance, Satellites, Installation, Bangkok, Thailand')
    Setting.set('meta_author', 'Comizu')
    Setting.set('meta_description', 'Comizu is a VSAT Installations and Maintenance Service Provider focused to give assistance on the Emerging Markets around the world')
    Setting.set('site_title', 'Comizu')
    Setting.set('site_subtitle', 'VSAT Installations and Maintenance Service Provider focused to give assistance on the Emerging Markets around the world.')
    Setting.set('copyright', '2008 Comizu ')
    Setting.set('contact_address', 'Bangkok - Thailand')
    Setting.set('contact_phone', 'xxx-xxx-xxxx')
    Setting.set('contact_name', 'Martin Izurieta')
  end

  def self.down
  end
end
