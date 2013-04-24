# Setup and configure puppet clients and servers.
#
# [localconfig]
# Default: $vardir/localconfig
# Where puppet agent caches the local configuration. An extension indicating the
# cache format is added automatically.
#
# [http_enable_post_connection_check]
# Default: false
# No idea what this does.... Something historical.
#
# [puppet_server]
# Default: puppet.example.com
# Specifies the puppet server the client should try to contact for catalogs.
# If not specified, the client will attempt to contact the hostname "puppet"
# unqualified.
#
# [master]
# Default: false
# Flag to tell this module that the host is a puppet master.
#
# [agent_catalog_run_lockfile]
# Default: undef
# A lock file to indicate that a puppet agent catalog run is currently in
# progress. The file contains the pid of the process that holds the lock on the
# catalog run. Specifying this as undef uses the default location,
# $statedir/agent_catalog_run.lock.
#
# [agent_disabled_lockfile]
# Default: undef
# A lock file to indicate that puppet agent runs have been administratively
# disabled. File contains a JSON object with state information. Specifying this
# as undef uses the default location, $statedir/agent_disabled.lock.
#
# [agent_noop]
# Default: undef
#
#
# [allow_duplicate_certs]
# Default: undef
# Whether to allow a new certificate request to overwrite an existing
# certificate. Specifying this as undef uses the default, false.
#
# [allow_variables_with_dashes]
# Default: undef
# Permit hyphens (-) in variable names and issue deprecation warnings about
# them. This setting should always be false; setting it to true will cause
# subtle and wide-ranging bugs. It will be removed in a future version.
# Hyphenated variables caused major problems in the language, but were allowed
# between Puppet 2.7.3 and 2.7.14. If you used them during this window, we
# apologize for the inconvenience — you can temporarily set this to true in
# order to upgrade, and can rename your variables at your leisure. Please
# revert it to false after you have renamed all affected variables. Specifying
# this as undef uses the default, false.
#
# [archive_file_server]
# Default: undef
# During an inspect run, the file bucket server to archive files to if
# archive_files is set. Specifying this as undef uses the default, $server.
#
# [archive_files]
# Default: undef
# During an inspect run, whether to archive files whose contents are audited to
# a file bucket. Specifying this as undef uses the default, false.
#
# [async_storeconfigs]
# Default: undef
# Whether to use a queueing system to provide asynchronous database integration.
# Requires that puppet queue be running. Specifying this as undef uses the
# default, false.
#
# [autoflush]
# Default: true
# Whether log files should always flush to disk.
#
# [autosign]
# Default: undef
# Whether to enable autosign. Valid values are true (which autosigns any key
# request, and is a very bad idea), false (which never autosigns any key
# request), and the path to a file, which uses that configuration file to
# determine which keys to sign. Specifying this as undef uses the default,
# $confdir/autosign.conf.
#
# [bindaddress]
# Default: undef
# The address a listening server should bind to. Specifying this as undef uses
# the default, 0.0.0.0.
#
# [bucketdir]
# Default: undef
# Where FileBucket files are stored. Specifying this as undef uses the default
# location, $vardir/bucket
#
# [ca]
# Default: undef
# Whether the master should function as a certificate authority. Specifying this
# as undef uses the default, true.
#
# [ca_name]
# Default: undef
# The name to use the Certificate Authority certificate. Specifying this as
# undef uses the default, "Puppet CA: $certname".
#
# [ca_port]
# Default: undef
# The port to use for the certificate authority. Specifying this as undef uses
# the default, $masterport.
#
# [ca_server]
# Default: puppet.example.com
# The server to use for certificate authority requests. It’s a separate server
# because it cannot and does not need to horizontally scale. Specifying this as
# undef uses the default, $server.
#
# [ca_ttl]
# Default: undef
# The default TTL for new certificates. If this setting is set, ca_days is
# ignored. Can be specified as a duration. Specifying this as undef uses the
# default, 5y.
#
# [cacert]
# Default: undef
# The CA certificate. Specifying this as undef uses the default,
# $cadir/ca_crt.pem.
#
# [cacrl]
# Default: undef
# The certificate revocation list (CRL) for the CA. Will be used if present but
# otherwise ignored. Specifying this as undef uses the default,
# $ssldir/ca_crl.pem
#
# [cadir]
# Default: undef
# The root directory for the certificate authority. Specifying this as undef
# uses the default, $ssldir/ca.
#
# [cakey]
# Default: undef
# The CA private key. Specifying this as undef uses the default,
# $cadir/ca_key.pem.
#
# [capass]
# Default: undef
# Where the CA stores the password for the private key. Specifying this as undef
# uses the default, $caprivatedir/ca.pass.
#
# [caprivatedir]
# Default: undef
# Where the CA stores private certificate information. Specifying this as undef
# uses the default, $cadir/private.
#
# [capub]
# Default: undef
# The CA public key. Specifying this as undef uses the default,
# $cadir/ca_pub.pem.
#
# [catalog_cache_terminus]
# Default: undef
# How to store cached catalogs. Valid values are 'json' and 'yaml'. Specifying
# this as undef uses the default, 'json'.
#
# [catalog_format]
# Default: undef
# (Deprecated for ‘preferred_serialization_format’) What format to use to dump
# the catalog. Only supports ‘marshal’ and ‘yaml’. Only matters on the client,
# since it asks the server for a specific format.
#
# [catalog_terminus]
# Default: undef
# Where to get node catalogs. This is useful to change if, for instance, you’d
# like to pre-compile catalogs and store them in memcached or some other
# easily-accessed store. Specifying this as undef uses the default, compiler.
#
# [cert_inventory]
# Default: undef
# A Complete listing of all certificates. Specifying this as undef uses the
# default, $cadir/inventory.txt.
#
# [certdir]
# Default: undef
# The certificate directory. Specifying this as undef uses the default,
# $ssldir/certs.
#
# [certificate_expire_warning]
# Default: undef
# The window of time leading up to a certificate’s expiration that a
# notification will be logged. This applies to CA, master, and agent
# certificates. Can be specified as a duration. Specifying this as undef uses
# the default, 60d.
#
# [certificate_revocation]
# Default: undef
# Whether certificate revocation should be supported by downloading a
# Certificate Revocation List (CRL) to all clients. If enabled, CA chaining
# will almost definitely not work. Specifying this as undef uses the default,
# true.
#
# [certname]
# Default: The name to use when handling certificates. Defaults to the fully
# qualified domain name. Specifying this as undef uses the default, $fqdn.
#
# [classfile]
# Default: $vardir/classes.txt
# The file in which puppet agent stores a list of the classes associated with
# the retrieved configuration. Can be loaded in the separate puppet executable
# using the --loadclasses option. Specifying this as undef uses the default
# location, $statedir/classes.txt.
#
# [client_datadir]
# Default: undef
# The directory in which serialized data is stored on the client. Specifying
# this as undef uses the default, $vardir/client_data.
#
# [clientbucketdir]
# Default: undef
# Where FileBucket files are stored locally. Specifying this as undef uses the
# default, $vardir/clientbucket.
#
# [clientyamldir]
# Default: undef
# The directory in which client-side YAML data is stored. Specifying this as
# undef uses the default, $vardir/client_yaml.
#
# [code]
# Default: undef
# Code to parse directly. This is essentially only used by puppet, and should
# only be set if you’re writing your own Puppet executable.
#
# [color]
# Default: undef
# Whether to use colors when logging to the console. Valid values are ansi
# (equivalent to true), html, and false, which produces no color. Defaults to
# false on Windows, as its console does not support ansi colors. Specifying this
# as undef uses the default, ansi.
#
# [confdir]
# Default: undef
# The main Puppet configuration directory. The default for this setting is
# calculated based on the user. If the process is running as root or the user
# that Puppet is supposed to run as, it defaults to a system directory, but if
# it’s running as any other user, it defaults to being in the user’s home
# directory. Specifying this as undef uses the default, /etc/puppet/.
#
# [config]
# Default: undef
# The configuration file for the current puppet application. Specifying this as
# undef uses the default, $confdir/${config_file_name}.
#
# [config_file_name]
# Default: undef
# The name of the puppet config file. Specifying this as undef uses the default,
# puppet.conf.
#
# [config_version]
# Default: undef
# How to determine the configuration version. By default, it will be the time
# that the configuration is parsed, but you can provide a shell script to
# override how the version is determined. The output of this script will be
# added to every log message in the reports, allowing you to correlate changes
# on your hosts to the source version on the server.
#
# [configprint]
# Default: undef
# Print the value of a specific configuration setting. If the name of a setting
# is provided for this, then the value is printed and puppet exits.
# Comma-separate multiple values. For a list of all values, specify ‘all’.
#
# [configtimeout]
# Default: undef
# How long the client should wait for the configuration to be retrieved before
# considering it a failure. This can help reduce flapping if too many clients
# contact the server at one time. Can be specified as a duration. Specifying
# this as undef uses the default, 2m.
#
# [countdb_url]
# Default: undef
# The url where the puppet couchdb database will be created. Specifying this as
# undef uses the default, http://127.0.0.1:5984/puppet.
#
# [csrdir]
# Default: undef
# Where the CA stores certificate requests. Specifying this as undef uses the
# default, $cadir/requests.
#
# [daemonize]
# Default: undef
# Whether to send the process into the background. This defaults to true on
# POSIX systems, and to false on Windows (where Puppet currently cannot
# daemonize). Specifying this as undef uses the default, true.
#
# [data_binding_terminus]
# Default: undef
# Where to retrive information about data. Specifying this as undef uses the
# default, hiera.
#
# [dbadapter]
# Default: undef
# The type of database to use. Specifying this as undef uses the default,
# sqlite3.
#
# [dbconnections]
# Default: undef
# The number of database connections for networked databases. Will be ignored
# unless the value is a positive integer.
#
# [dblocation]
# Default: undef
# The database cache for client configurations. Used for querying within the
# language. Specifying this as undef uses the default,
# $statedir/clientconfigs.sqlite3
#
# [dbmigrate]
# Default: undef
# Whether to automatically migrate the database. Specifying this as undef uses
# the default, false.
#
# [dbname]
# Default: undef
# The name of the database to use. Specifying this as undef uses the default,
# puppet.
#
# [dbpassword]
# Default: undef
# The database password for caching. Only used when networked databases are
# used. Specifying this as undef uses the default, puppet.
#
# [dbport]
# Default: undef
# The database password for caching. Only used when networked databases are
# used.
#
# [dbserver]
# Default: undef
# The database server for caching. Only used when networked databases are used.
# Specifying this as undef uses the default, localhost.
#
# [dbsocket]
# Default: undef
# The database socket location. Only used when networked databases are used.
# Will be ignored if the value is an empty string.
#
# [dbuser]
# Default: undef
# The database user for caching. Only used when networked databases are used.
# Specifying this as undef uses the default, puppet.
#
# [default_file_terminus]
# Default: undef
# The default source for files if no server is given in a uri, e.g.
# puppet:///file. The default of rest causes the file to be retrieved using the
# server setting. When running apply the default is file_server, causing
# requests to be filled locally. Specifying this as undef uses the default,
# rest.
#
# [deviceconfig]
# Default: undef
# Path to the device config file for puppet device. Specifying this as undef
# uses the default, $confdir/device.conf.
#
# [devicedir]
# Default: undef
# The root directory of devices' $vardir. Specifying this as undef uses the
# default, $vardir/devices.
#
# [diff]
# Default: undef
# Which diff command to use when printing differences between files. This
# setting has no default value on Windows, as standard diff is not available,
# but Puppet can use many third-party diff tools. Specifying this as undef uses
# the default, diff.
#
# [diff_args]
# Default: undef
# Which arguments to pass to the diff command when printing differences between
# files. The command to use can be chosen with the diff setting. Specifying this
# as undef uses the default, -u.
#
# [dns_alt_names]
# Default: undef
# The comma-separated list of alternative DNS names to use for the local host.
# When the node generates a CSR for itself, these are added to the request as
# the desired subjectAltName in the certificate: additional DNS labels that the
# certificate is also valid answering as. This is generally required if you use
# a non-hostname certname, or if you want to use puppet kick or puppet resource
# -H and the primary certname does not match the DNS name you use to communicate
# with the host. This is unnecessary for agents, unless you intend to use them
# as a server for puppet kick or remote puppet resource management. It is rarely
# necessary for servers; it is usually helpful only if you need to have a pool
# of multiple load balanced masters, or for the same master to respond on two
# physically separate networks under different names.
#
# [document_all]
# Default: undef
# Document all resources. Specifying this as undef uses the default, false.
#
# [environment]
# Default: production
# The environment Puppet is running in. For clients (e.g., puppet agent) this
# determines the environment itself, which is used to find modules and much
# more. For servers (i.e., puppet master) this provides the default environment
# for nodes we know nothing about.
#
# [evaltrace]
# Default: undef
# Whether each resource should log when it is being evaluated. This allows you
# to interactively see exactly what is being done. Specifying this as undef uses
# the default, false.
#
# [external_nodes]
# Default: none
# An external command that can produce node information. The command’s output
# must be a YAML dump of a hash, and that hash must have a classes key and/or a
# parameters key, where classes is an array or hash and parameters is a hash.
# For unknown nodes, the command should exit with a non-zero exit code. This
# command makes it straightforward to store your node mapping information in
# other data sources like databases. Specifying this as undef uses the default,
# none.
#
# [factpath]
# Default: undef
# Where Puppet should look for facts. Multiple directories should be separated
# by the system path separator character. (The POSIX path separator is ‘:’, and
# the Windows path separator is ‘;’.). Specifying this as undef uses the
# default, $vardir/lib/facter:$vardir/facts.
#
# [facts_terminus]
# Default: undef
# The node facts terminus. Specifying this as undef uses the default, facter.
#
# [fileserverconfig]
# Default: undef
# Where the fileserver configuration is stored. Specifying this as undef uses
# the default, $confdir/fileserver.conf.
#
# [filetimeout]
# Default: undef
# The minimum time to wait between checking for updates in configuration files.
# This timeout determines how quickly Puppet checks whether a file (such as
# manifests or templates) has changed on disk. Can be specified as a duration.
# Specifying this as undef uses the default, 15s.
#
# [freeze_main]
# Default: undef
# Freezes the 'main' class, disallowing any code to be added to it. This
# essentially means that you can’t have any code outside of a node, class, or
# definition other than in the site manifest. Specifying this as undef uses the
# default, false.
#
# [genconfig]
# Default: undef
#
#
# [genmanifests]
# Default: undef
#
#
# [graph]
# Default: undef
#
#
# [graphdir]
# Default: undef
#
#
# [group]
# Default: undef
#
#
# [hiera_config]
# Default: undef
#
#
# [hostcert]
# Default: undef
#
#
# [hostcrl]
# Default: undef
#
#
# [hostcsr]
# Default: undef
#
#
# [hostprivkey]
# Default: undef
#
#
# [hostpubkey]
# Default: undef
#
#
# [http_compression]
# Default: undef
#
#
# [http_proxy_host]
# Default: undef
#
#
# [http_proxy_port]
# Default: undef
#
#
# [httplog]
# Default: undef
#
#
# [ignorecache]
# Default: undef
#
#
# [ignoreimport]
# Default: undef
#
#
# [ignoreschedules]
# Default: undef
#
#
# [inventory_port]
# Default: undef
#
#
# [inventory_server]
# Default: undef
#
#
# [inventory_terminus]
# Default: undef
#
#
# [keylength]
# Default: undef
#
#
# [lastrunfile]
# Default: undef
#
#
# [lastrunreport]
# Default: undef
#
#
# [ldapattrs]
# Default: undef
#
#
# [ldapbase]
# Default: undef
#
#
# [ldapclassattrs]
# Default: undef
#
#
# [ldappassword]
# Default: undef
#
#
# [ldapport]
# Default: undef
#
#
# [ldapserver]
# Default: undef
#
#
# [ldapssl]
# Default: undef
#
#
# [ldapstackedattrs]
# Default: undef
#
#
# [ldapstring]
# Default: undef
#
#
# [ldaptls]
# Default: undef
#
#
# [ldapuser]
# Default: undef
#
#
# [libdir]
# Default: $varlib/dir
# An extra search path for Puppet. This is only useful for those files that
# Puppet will load on demand, and is only guaranteed to work for those cases.
# In fact, the autoload mechanism is responsible for making sure this directory
# is in Ruby’s search path. Specifying this as undef uses the default location,
# which is $confdir/lib.
#
# [listen]
# Default: undef
#
#
# [localcacert]
# Default: undef
#
#
# [localconfig]
# Default: undef
#
#
# [logdir]
# Default: /var/log/puppet
# The directory in which to store log files.
#
# [manage_internal_file_permissions]
# Default: undef
#
#
# [manifests]
# Default: undef
#
#
# [manifestdir]
# Default: undef
#
#
# [masterhttplog]
# Default: undef
#
#
# [masterlog]
# Default: undef
#
#
# [masterport]
# Default: undef
#
#
# [maximum_uid]
# Default: undef
#
#
# [mkusers]
# Default: undef
#
#
# [module_repository]
# Default: undef
#
#
# [module_working_dir]
# Default: undef
#
#
# [modulepath]
# Default: /etc/puppet/env/production/modules
# The search path for modules, as a list of directories separated by the system
# path separator character. (The POSIX path separator is ‘:’, and the Windows
# path separator is ‘;’.)
#
# [name]
# Default: undef
#
#
# [node_cache_terminus]
# Default: undef
#
#
# [node_name]
# Default: undef
#
#
# [node_name_fact]
# Default: undef
#
#
# [node_name_value]
# Default: undef
#
#
# [node_terminus]
# Default: plain
# Where to find information about nodes.
#
# [onetime]
# Default: undef
#
#
# [passfile]
# Default: undef
#
#
# [path]
# Default: undef
#
#
# [pidfile]
# Default: undef
#
#
# [plugindest]
# Default: undef
#
#
# [pluginsignore]
# Default: undef
#
#
# [pluginsource]
# Default: undef
#
#
# [pluginsync]
# Default: true
# Whether plugins should be synced with the central server. Specifying this as
# undef uses the default, which is "true".
#
# [postrun_command]
# Default: undef
#
#
# [preferred_serialization_format]
# Default: undef
#
#
# [prerun_command]
# Default: /usr/local/bin/update-puppet-repos
# A command to run before every agent run. If this command returns a non-zero
# return code, the entire Puppet run will fail.
#
# [privatedir]
# Default: undef
#
#
# [privatekeydir]
# Default: undef
#
#
# [publickeydir]
# Default: undef
#
#
# [puppetdlog]
# Default: undef
#
#
# [puppetport]
# Default: undef
#
#
# [queue_source]
# Default: undef
#
#
# [queue_type]
# Default: undef
#
#
# [rails_loglevel]
# Default: undef
#
#
# [railslog]
# Default: undef
#
#
# [report]
# Default: true
# Whether to send reports after every transaction.
#
# [report_port]
# Default: undef
#
#
# [report_server]
# Default: undef
#
#
# [reportdir]
# Default: undef
#
#
# [reportform]
# Default: undef
#
#
# [reports]
# Default: http
# The list of reports to generate. All reports are looked for in
# puppet/reports/name.rb, and multiple report names should be comma-separated
# (whitespace is okay).
#
# [reporturl]
# Default: http://puppet-dashboard.example.com:80/reports/upload
# The URL used by the http reports processor to send reports
#
# [req_bits]
# Default: undef
#
#
# [requestdir]
# Default: undef
#
#
# [resourcefile]
# Default: undef
#
#
# [rest_authconfig]
# Default: undef
#
#
# [route_file]
# Default: undef
#
#
# [rrddir]
# Default: undef
#
#
# [rrdinterval]
# Default: undef
#
#
# [rundir]
# Default: /var/run/puppet
# Where puppet PID files are kept.
#
# [runinterval]
# Default: undef
# How often puppet agent applies the client configuration; in seconds. Note that
# a runinterval of 0 means "run continuously" rather than "never run." If you
# want puppet agent to never run, you should start it with the --no-client
# option. Can be specified as a duration.
#
# [sendmail]
# Default: undef
#
#
# [serial]
# Default: undef
#
#
# [server]
# Default: undef
#
#
# [server_datadir]
# Default: undef
#
#
# [show_diff]
# Default: undef
#
#
# [signeddir]
# Default: undef
#
#
# [smtpserver]
# Default: undef
#
#
# [splay]
# Default: undef
#
#
# [splaylimit]
# Default: undef
#
#
# [srv_domain]
# Default: undef
#
#
# [ssl_client_ca_auth]
# Default: undef
#
#
# [ssl_client_header]
# Default: SSL_CLIENT_S_DN
# The header containing an authenticated client’s SSL DN. This header must be
# set by the proxy to the authenticated client’s SSL DN
# (e.g., /CN=puppet.puppetlabs.com).
#
# [ssl_client_verify_header]
# Default: SSL_CLIENT_VERIFY
# The header containing the status message of the client verification. This
# header must be set by the proxy to ‘SUCCESS’ if the client successfully
# authenticated, and anything else otherwise.
#
# [ssldir]
# Default: $vardir/ssl
# Where SSL certificates are kept.  Specifying this as undef uses the default
# location, which is $confdir/ssl.
#
# [statedir]
# Default: undef
#
#
# [statefile]
# Default: undef
#
#
# [storeconfigs]
# Default: undef
#
#
# [storeconfigs_backend]
# Default: undef
#
#
# [strict_hostname_checking]
# Default: undef
#
#
# [summarize]
# Default: undef
#
#
# [syslogfacility]
# Default: undef
#
#
# [tagmap]
# Default: undef
#
#
# [tags]
# Default: undef
#
#
# [templatedir]
# Default: undef
#
#
# [thin_storeconfigs]
# Default: undef
#
#
# [trace]
# Default: undef
#
#
# [use_cached_catalog]
# Default: undef
#
#
# [use_srv_records]
# Default: undef
#
#
# [usecacheonfailure]
# Default: undef
#
#
# [user]
# Default: undef
#
#
# [vardir]
# Default: /var/lib/puppet
# Where Puppet stores dynamic and growing data. The default for this setting is
# calculated specially, like confdir_.
#
# [waitforcert]
# Default: undef
#
#
# [yamldir]
# Default: undef
#
#
# [zlib]
# Default: undef
#
#
# [passenger_high_performance]
# Default: on
#
#
# [passenger_max_pool_size]
# Default: 15
#
#
# [passenger_min_instances]
# Default: 5
#
#
# [passenger_pool_idle_time]
# Default: 600
#
#
# [passenger_stat_throttle_rate]
# Default: 120
#
#
# [passenger_rack_autodetect]
# Default: Off
#
#
# [passenger_rails_autodetect]
# Default: Off
#
#
# [passenger_use_global_queue]
# Default: on
#
#
# Example:
#

class puppet (
    $http_enable_post_connection_check = false,
    $master                            = false,
    $agent_catalog_run_lockfile        = undef,
    $agent_disabled_lockfile           = undef,
    $agent_noop                        = undef,
    $allow_duplicate_certs             = undef,
    $allow_variables_with_dashes       = undef,
    $archive_file_server               = undef,
    $archive_files                     = undef,
    $async_storeconfigs                = undef,
    $autoflush                         = true,
    $autosign                          = undef,
    $bindaddress                       = undef,
    $bucketdir                         = undef,
    $ca                                = undef,
    $ca_name                           = undef,
    $ca_port                           = undef,
    $ca_server                         = 'puppet.example.com',
    $ca_ttl                            = undef,
    $cacert                            = undef,
    $cacrl                             = undef,
    $cadir                             = undef,
    $cakey                             = undef,
    $capass                            = undef,
    $caprivatedir                      = undef,
    $capub                             = undef,
    $catalog_cache_terminus            = undef,
    $catalog_format                    = undef,
    $catalog_terminus                  = undef,
    $cert_inventory                    = undef,
    $certdir                           = undef,
    $certificate_expire_warning        = undef,
    $certificate_revocation            = undef,
    $certname                          = undef,
    $classfile                         = '$vardir/classes.txt',
    $client_datadir                    = undef,
    $clientbucketdir                   = undef,
    $clientyamldir                     = undef,
    $code                              = undef,
    $color                             = undef,
    $config                            = undef,
    $config_file_name                  = undef,
    $config_version                    = undef,
    $configprint                       = undef,
    $configtimeout                     = undef,
    $couchdb_url                       = undef,
    $csrdir                            = undef,
    $daemonize                         = undef,
    $data_binding_terminus             = undef,
    $dbadapter                         = undef,
    $dbconnections                     = undef,
    $dblocation                        = undef,
    $dbmigrate                         = undef,
    $dbname                            = undef,
    $dbpassword                        = undef,
    $dbport                            = undef,
    $dbserver                          = undef,
    $dbsocket                          = undef,
    $dbuser                            = undef,
    $default_file_terminus             = undef,
    $deviceconfig                      = undef,
    $devicedir                         = undef,
    $diff                              = undef,
    $diff_args                         = undef,
    $dns_alt_names                     = undef,
    $document_all                      = undef,
    $environment                       = 'production',
    $evaltrace                         = undef,
    $external_nodes                    = 'none',
    $factpath                          = undef,
    $facts_terminus                    = undef,
    $fileserverconfig                  = undef,
    $filetimeout                       = undef,
    $freeze_main                       = undef,
    $genconfig                         = undef,
    $genmanifest                       = undef,
    $graph                             = undef,
    $graphdir                          = undef,
    $group                             = undef,
    $hiera_config                      = undef,
    $hostcert                          = undef,
    $hostcrl                           = undef,
    $hostcsr                           = undef,
    $hostprivkey                       = undef,
    $hostpubkey                        = undef,
    $http_compression                  = undef,
    $http_proxy_host                   = undef,
    $http_proxy_port                   = undef,
    $httplog                           = undef,
    $ignorecache                       = undef,
    $ignoreimport                      = undef,
    $ignoreschedules                   = undef,
    $inventory_port                    = undef,
    $inventory_server                  = undef,
    $inventory_terminus                = undef,
    $keylength                         = undef,
    $lastrunfile                       = undef,
    $lastrunreport                     = undef,
    $ldapattrs                         = undef,
    $ldapbase                          = undef,
    $ldapclassattrs                    = undef,
    $ldapparentattr                    = undef,
    $ldappassword                      = undef,
    $ldapport                          = undef,
    $ldapserver                        = undef,
    $ldapssl                           = undef,
    $ldapstackedattrs                  = undef,
    $ldapstring                        = undef,
    $ldaptls                           = undef,
    $ldapuser                          = undef,
    $libdir                            = '$vardir/lib',
    $listen                            = undef,
    $localcacert                       = undef,
    $localconfig                       = '$vardir/localconfig',
    $logdir                            = '/var/log/puppet',
    $manage_internal_file_permissions  = undef,
    $manifest                          = undef,
    $manifestdir                       = undef,
    $masterhttplog                     = undef,
    $masterlog                         = undef,
    $masterport                        = undef,
    $maximum_uid                       = undef,
    $mkusers                           = undef,
    $module_repository                 = undef,
    $module_working_dir                = undef,
    $modulepath                        = '/etc/puppet/env/production/modules',
    $node_cache_terminus               = undef,
    $node_name                         = undef,
    $node_name_fact                    = undef,
    $node_name_value                   = undef,
    $node_terminus                     = 'plain',
    $onetime                           = undef,
    $passfile                          = undef,
    $path                              = undef,
    $pidfile                           = undef,
    $plugindest                        = '$vardir/lib',
    $pluginsignore                     = undef,
    $pluginsource                      = undef,
    $pluginsync                        = true,
    $postrun_command                   = undef,
    $preferred_serialization_format    = undef,
    $prerun_command                    = '/usr/local/bin/update-puppet-repos',
    $privatedir                        = undef,
    $privatekeydir                     = undef,
    $publickeydir                      = undef,
    $puppetdlog                        = undef,
    $puppetport                        = undef,
    $queue_source                      = undef,
    $queue_type                        = undef,
    $rails_logleve                     = undef,
    $railslog                          = undef,
    $report                            = true,
    $report_port                       = undef,
    $report_server                     = undef,
    $reportdir                         = undef,
    $reportfrom                        = undef,
    $reports                           = 'http',
    $reporturl                         = 'http://puppet-dashboard.example.com:80/reports/upload',
    $req_bits                          = undef,
    $requestdir                        = undef,
    $resourcefile                      = undef,
    $rest_authconfig                   = undef,
    $route_file                        = undef,
    $rrddir                            = undef,
    $rrdinterval                       = undef,
    $rundir                            = '/var/run/puppet',
    $runinterval                       = undef,
    $sendmail                          = undef,
    $serial                            = undef,
    $server                            = 'puppet.example.com',
    $server_datadir                    = undef,
    $show_diff                         = undef,
    $signeddir                         = undef,
    $smtpserver                        = undef,
    $splay                             = undef,
    $splaylimit                        = undef,
    $srv_domain                        = undef,
    $ssl_client_ca_auth                = undef,
    $ssl_client_header                 = 'SSL_CLIENT_S_DN',
    $ssl_client_verify_header          = 'SSL_CLIENT_VERIFY',
    $ssl_server_ca_auth                = undef,
    $ssldir                            = '$vardir/ssl',
    $statedir                          = undef,
    $statefile                         = undef,
    $storeconfigs                      = undef,
    $storeconfigs_backend              = undef,
    $strict_hostname_checking          = undef,
    $summarize                         = undef,
    $syslogfacility                    = undef,
    $tagmap                            = undef,
    $templatedir                       = undef,
    $thin_storeconfigs                 = undef,
    $trace                             = undef,
    $use_cached_catalog                = undef,
    $use_srv_records                   = undef,
    $usecacheonfailure                 = undef,
    $user                              = undef,
    $vardir                            = '/var/lib/puppet',
    $waitforcert                       = undef,
    $yamldir                           = undef,
    $zlib                              = undef,
    $passenger_high_performance        = 'on',
    $passenger_max_pool_size           = '15',
    $passenger_min_instances           = '5',
    $passenger_pool_idle_time          = '600',
    $passenger_stat_throttle_rate      = '120',
    $passenger_rack_autodetect         = 'Off',
    $passenger_rails_autodetect        = 'Off',
    $passenger_use_global_queue        = 'on'
){

    package { 'puppet':
        ensure => latest
    }

    package { 'ruby-ldap':
        ensure => present
    }

    package { 'augeas-libs':
        ensure => latest
    }

    file { '/etc/sysconfig/puppet':
        content => template('puppet/puppet.sysconfig.erb'),
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        notify  => Service['puppet']
    }

    case $master {
        default: {
            file { '/etc/puppet/puppet.conf':
                content => template('puppet/agent.conf.erb'),
                owner   => 'root',
                group   => 'root',
                mode    => '0644',
                notify  => Service['puppet']
            }
        }
        true: {
            file { '/etc/puppet/puppet.conf':
                content => template('puppet/agent.conf.erb', 'puppet/master.conf.erb'),
                owner   => 'root',
                group   => 'root',
                mode    => '0644',
                notify  => Service['puppet']
            }
        }
    }

    file { '/var/log/puppet':
        ensure => directory,
        owner  => 'puppet',
        group  => 'puppet',
        mode   => '0755'
    }

    service { 'puppet':
        ensure     => true,
        enable     => true,
        hasstatus  => true,
        hasrestart => true,
        require    => [
            Package['puppet'],
            File['/etc/puppet/puppet.conf'],
            File['/etc/sysconfig/puppet']
        ],
        pattern    => 'puppetd'
    }

    cron { 'assurePuppet':
        command => 'if [ `pgrep puppetd | wc -l` -lt 1 ]; then /sbin/service puppet restart; fi',
        user    => 'root',
        minute  => ['0','30']
    }

    file { '/usr/local/bin/puppet_agent_toggle':
        ensure  => present,
        content => template('puppet/puppet_agent_toggle.erb'),
        owner   => 'root',
        group   => 'root',
        mode    => '0755'
    }

    file { '/usr/share/puppet/facts.txt':
        ensure  => present,
        content => template('puppet/facts.txt.erb'),
        owner   => 'root',
        group   => 'root',
        mode    => '0444',
        replace => false,
        require => Package['puppet']
    }

    if $master == true {
        include apache
        include apache::mod_passenger
        include git

        realize Package['mod_python']
        realize Package['mod_ssl']
        realize Package['php']

        # autosign, 'cause that's how we roll
        file { '/etc/puppet/autosign.conf':
            ensure  => present,
            content => template('puppet/autosign.conf.erb'),
            owner   => 'puppet',
            group   => 'puppet',
            mode    => '0644'
        }

        file { '/var/lib/puppet/ssl/ca':
            ensure  => 'directory',
            owner   => 'puppet',
            group   => 'puppet',
            mode    => '0770',
        }

        file { '/var/lib/puppet/ssl/ca/ca_key.pem':
            ensure  => present,
            source  => "puppet://${puppet_server}/modules/puppet/ca_key.${::loc}.pem",
            owner   => 'puppet',
            group   => 'puppet',
            mode    => '0660',
            require => File['/var/lib/puppet/ssl/ca'],
        }

        # manifests and configs live in a git repo.
        # But rather than using vcsrepo module, we use prerun_command.
        file { '/usr/local/bin/update-puppet-repos':
            content => template('ansible/modules/update-puppet-repos.erb'),
            owner   => 'root',
            group   => 'root',
            mode    => '0755',
        }

        exec { 'puppet_fix_yaml_perms':
            command     => 'find /var/lib/puppet/yaml/ -type d -exec chmod 755 {} \;',
            onlyif      => 'find ./yaml -type d -not -perm 0755 | wc -l',
            refreshonly => true
        }

        exec { 'puppetmaster_install_ssl':
            command     => "bash -c \"cd /var/lib/puppet/ssl; cp certs/${::fqdn}.pem ca/ca_crt.pem ca/ca_crl.pem /etc/puppet/rack/ssl; cp private_keys/${::fqdn}.pem /etc/puppet/rack/ssl/private_keys\"",
            onlyif      => 'find /etc/puppet/rack/ssl -type f | wc -l',
            refreshonly => true,
            require     => [
                File['/etc/puppet/rack/ssl'],
                File['/etc/puppet/rack/ssl/private_keys'],
            ]
        }

        # Keep a maximum of 7 days worth of report yamls.
        cron { 'cleanReports':
            command => '/usr/sbin/tmpwatch 168 /var/lib/puppet/reports',
            user    => 'root',
            minute  => '0',
            hour    => 1
        }

        # Frequent git pushes leaves git-upload-pack processes hanging around.
        cron { 'kill_stale_git-upload-pack':
            command => 'pkill -9 git',
            minute  => 17,
            hour    => 23,
        }

        service { 'puppetmaster':
            ensure    => false,
            enable    => false,
            hasstatus => true,
            require   => Package['puppet-server']
        }

        package { 'puppet-server':
            ensure => latest
        }

        file { '/etc/sysconfig/puppetmaster':
            content => template('puppet/puppetmaster.sysconfig.erb'),
            notify  => Service['puppetmaster']
        }

        file { '/etc/puppet/fileserver.conf':
            content => template('puppet/fileserver.conf.erb'),
            owner   => 'puppet',
            group   => 'puppet',
            notify  => Service['puppetmaster'],
        }

        file { '/etc/puppet/env':
            ensure => directory,
            owner  => 'puppet',
            group  => 'puppet'
        }

        file { '/etc/puppet/env/stage':
            ensure  => directory,
            owner   => 'puppet',
            group   => 'puppet',
            require => File['/etc/puppet/env']
        }

        file { '/etc/puppet/env/qa':
            ensure  => directory,
            owner   => 'puppet',
            group   => 'puppet',
            require => File['/etc/puppet/env']
        }

        file { '/etc/puppet/env/production':
            ensure  => directory,
            owner   => 'puppet',
            group   => 'puppet',
            require => File['/etc/puppet/env']
        }

        file { '/var/www/html/puppetca':
            ensure => directory
        }

        # used for auto-signing keys during kickstarting a new system.
        file { '/var/www/html/puppetca/puppetca_ks.php':
            ensure  => present,
            content => template('puppet/puppetca_ks.php.erb')
        }

        file { [ '/var/lib/puppet/rrd',
                '/var/lib/puppet/ssl',
                '/var/lib/puppet/ssl/private',
                '/var/lib/puppet/ssl/public_keys',
                '/var/lib/puppet/ssl/certs',
                '/var/lib/puppet/ssl/certificate_requests',
                '/var/lib/puppet/reports',
                '/var/lib/puppet/fileserver',
                '/var/lib/puppet/bucket',
                '/var/lib/puppet/clientbucket',
                '/var/lib/puppet/facts',
            ]:
            ensure  => directory,
            owner   => 'puppet',
            group   => 'puppet',
        }

        file { '/var/lib/puppet/lib':
            ensure  => directory,
            mode    => '0755',
            owner   => 'root',
            group   => 'root',
        }

        file { [ '/etc/puppet/rack',
                '/etc/puppet/rack/public',
                '/etc/puppet/rack/tmp',
            ]:
            ensure  => directory,
            mode    => '0755',
            owner   => 'root',
            group   => 'root',
        }

        file { [ '/etc/puppet/rack/ssl',
                '/etc/puppet/rack/ssl/private_keys',
            ]:
            ensure  => directory,
            mode    => '0700',
            owner   => 'apache',
            group   => 'apache',
            require => File['/etc/puppet/rack'],
            notify  => Exec['puppetmaster_install_ssl']
        }

        file { '/var/lib/puppet/yaml':
            ensure  => directory,
            owner   => 'puppet',
            group   => 'puppet',
            notify  => Exec['puppet_fix_yaml_perms']
        }

        file { '/var/lib/puppet/yaml/facts':
            ensure  => directory,
            recurse => true,
            owner   => 'puppet',
            group   => 'puppet',
            require => File['/var/lib/puppet/yaml']
        }

        file { '/var/lib/puppet/yaml/node':
            ensure  => directory,
            recurse => true,
            owner   => 'puppet',
            group   => 'puppet',
            require => File['/var/lib/puppet/yaml']
        }

        file { '/etc/puppet/rack/config.ru':
            ensure  => present,
            content => template('puppet/config.ru.erb'),
            mode    => '0644',
            owner   => 'puppet',
            group   => 'root',
            require => File['/etc/puppet/rack']
        }

        file { '/etc/httpd/conf.d/puppetmaster.conf':
            content => template('puppet/puppetmaster.httpd.conf.erb'),
            notify  => Service['httpd']
        }

        file { "/etc/httpd/conf.d/${::fqdn}.conf":
            content => template('puppet/depot.conf.erb'),
            mode    => '0644',
            owner   => 'root',
            group   => 'root',
            notify  => Service['httpd']
        }

        file { '/etc/rsyslog.d/puppetmaster.conf':
            ensure  => present,
            content => template('puppet/puppetmaster.rsyslog.conf.erb'),
        }

        file {
            "/etc/puppet/rack/ssl/private_keys/puppet.${::loc}.example.com.pem":
            ensure  => present,
            source  => "puppet://${puppet_server}/modules/puppet/puppet.${::loc}.key",
            owner   => 'puppet',
            group   => 'puppet',
            mode    => '0600',
            require => File['/etc/puppet/rack']
        }

        file { "/etc/puppet/rack/ssl/puppet.${::loc}.example.com.pem":
            ensure  => present,
            source  => "puppet://${puppet_server}/modules/puppet/puppet.${::loc}.cert",
            owner   => 'puppet',
            group   => 'puppet',
            mode    => '0644',
            require => File['/etc/puppet/rack']
        }

        file { '/etc/puppet/rack/ssl/ca_crl.pem':
            ensure  => present,
            source  => "puppet://${puppet_server}/modules/puppet/ca_crl.pem",
            owner   => 'puppet',
            group   => 'puppet',
            mode    => '0644',
            require => File['/etc/puppet/rack']
        }

        file { '/etc/puppet/rack/ssl/ca_crt.pem':
            ensure  => present,
            source  => "puppet://${puppet_server}/modules/puppet/ca_crt.pem",
            owner   => 'puppet',
            group   => 'puppet',
            mode    => '0644',
            require => File['/etc/puppet/rack']
        }
    }
}
