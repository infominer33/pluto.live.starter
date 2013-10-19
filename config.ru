require './boot'

### todo: check how we can auto-connect in Planet
#  use activerecord.connected? or similar?

Pluto.connect!   # try connect w/ DATABASE_URL

map '/' do

  run Planet

  map '/db' do
    run PlutoAdmin::Server
  end

end