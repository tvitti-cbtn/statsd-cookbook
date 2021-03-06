default[:statsd][:repo] = "git://github.com/etsy/statsd.git"
default[:statsd][:revision] = "master"
default[:statsd][:version] = "0.7.0"

default[:statsd][:log_file] = "/var/log/statsd.log"

default[:statsd][:flush_interval_msecs] = 10000
default[:statsd][:port] = 8125

# Is the graphite backend enabled?
default[:statsd][:graphite_enabled] = true
default[:statsd][:graphite_port] = 2003
default[:statsd][:graphite_host] = "localhost"

# This will auto-configure the stackdriver 'source' variable with the instance id, if set
default[:statsd][:stackdriver_instance_config] = false

#
# Add all NPM module backends here. Each backend should be a
# hash of the backend's name to the NPM module's version. If we
# should just use the latest, set the hash to null.
#
# For example, to use version 0.0.1 of statsd-librato-backend:
#
#   attrs[:statsd][:backends] = { 'statsd-librato-backend' => '0.0.1' }
#
# To use the latest version of statsd-librato-backend:
#
#   attrs[:statsd][:backends] = { 'statsd-librato-backend' => nil }
#
default[:statsd][:backends] = {}

#
# Add any additional backend configuration here.
#
default[:statsd][:extra_config] = {}
