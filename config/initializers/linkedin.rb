cred = YAML::load(File.open("#{RAILS_ROOT}/config/keys.yml"))
LINKEDIN_CLIENT = LinkedIn::Client.new( cred['linkedin']['key'], cred['linkedin']['secret'])
LINKEDIN_CLIENT.authorize_from_access( cred['linkedin']['auth']['key'], cred['linkedin']['auth']['secret'] )
