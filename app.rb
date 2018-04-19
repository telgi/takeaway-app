APP_ROOT = File.dirname(__FILE__)
# Special variable containing array of all folders Ruby will look in
$:.unshift( File.join(APP_ROOT, 'lib') )
require 'takeaway'

takeaway = Takeaway.new
takeaway.launch!
