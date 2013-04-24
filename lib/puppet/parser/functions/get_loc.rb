module Puppet::Parser::Functions
	newfunction(:get_loc, :type => :rvalue) do |args|
		fqdn = lookupvar('fqdn')
		x = fqdn.split('.')
		x.pop
		x.pop
		x.pop
	end
end