require "ping"

RSpec.configure do |c|
  c.exclusion_filter = {
    :if => lambda {|what|
      case what
      when :network_available
        !Ping.pingecho "google.com", 10, 80
      end
    }
  }
end

describe "network group" do
  it "example", :if => :network_available do
  end

  it "example 2" do
  end
end
