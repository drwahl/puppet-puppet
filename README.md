puppet-puppet
=============

Puppet module to install/configure puppet (agents and masters). Includes a few scripts to assist with puppet administration, such as "puppet_agent_toggle", which allows non-priveleged users (via sudo) to disable puppet for a short period of time.

A few assumptions are made with this module at this time:

1) Auto-signing is acceptable/desired.
2) Puppet masters will be behind a VIP/CNAME.
