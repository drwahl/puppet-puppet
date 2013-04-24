module Puppet::Parser::Functions
	newfunction(:get_env, :type => :rvalue) do |args|
		fqdn = lookupvar('fqdn')
		x = fqdn.split('.')
		x.shift
		x.shift
	end
end
