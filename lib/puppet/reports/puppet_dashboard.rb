require 'puppet'
require 'net/http'
require 'uri'

# default timeout too short.
TIMEOUT = 180

Puppet::Reports.register_report(:puppet_dashboard) do

  desc <<-DESC
  Send report information via HTTP to the `reporturl`. Each host sends
  its report as a YAML dump and this sends this YAML to a client via HTTP POST.
  The YAML is the `report` parameter of the request."
  DESC

  def process
    url = URI.parse(Puppet[:reporturl])
    req = Net::HTTP::Post.new(url.path)
    req.body = self.to_yaml
    req.content_type = "application/x-yaml"
    Net::HTTP.new(url.host, url.port).start {|http|
      http.read_timeout = TIMEOUT
      http.request(req)
    }
  end
end
