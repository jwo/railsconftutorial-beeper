require 'spec_helper'

describe Alarm do

  it {should validate_presence_of(:service) }
  it {should validate_presence_of(:severity) }
  it {should ensure_inclusion_of(:severity).in_array(['warning', 'critical']) }

end
