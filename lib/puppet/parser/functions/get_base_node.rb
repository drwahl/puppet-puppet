module Puppet::Parser::Functions
	newfunction(:get_base_node, :type => :rvalue) do |args|
		fqdn = lookupvar('fqdn')
                x = fqdn.gsub( /^(\D+\d+)[a-z]\.(.*)$/, '\1.\2' )
		return x
	end
end
