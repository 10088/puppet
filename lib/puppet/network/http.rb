# This module is used to handle puppet REST requests in puppetserver.
module Puppet::Network::HTTP
  HEADER_ENABLE_PROFILING = "X-Puppet-Profiling"
  HEADER_PUPPET_VERSION = "X-Puppet-Version"

  SERVER_URL_PREFIX = "/puppet"
  SERVER_URL_VERSIONS = "v3"

  MASTER_URL_PREFIX = SERVER_URL_PREFIX
  MASTER_URL_VERSIONS = SERVER_URL_VERSIONS

  CA_URL_PREFIX = "/puppet-ca"
  CA_URL_VERSIONS = "v1"

  require 'puppet/network/authconfig'
  require 'puppet/network/authorization'

  require 'puppet/network/http/issues'
  require 'puppet/network/http/error'
  require 'puppet/network/http/route'
  require 'puppet/network/http/api'
  require 'puppet/network/http/api/master'
  require 'puppet/network/http/api/master/v3'
  require 'puppet/network/http/handler'
  require 'puppet/network/http/response'
  require 'puppet/network/http/request'
  require 'puppet/network/http/memory_response'
end
