Gem::Specification.new do |s|

  s.name              = "sixarm_ruby_object_instance_exec"
  s.summary           = "SixArm Ruby Gem: Object#instance_exec(*args,&block) is like instance_eval with args"
  s.version           = "1.0.4"
  s.author            = "SixArm"
  s.email             = "sixarm@sixarm.com"
  s.homepage          = "http://sixarm.com/"
  s.signing_key       = '/home/sixarm/keys/certs/sixarm.com.rsa.private.key.and.certificate.pem'
  s.cert_chain        = ['/home/sixarm/keys/certs/sixarm.pem']

  s.platform          = Gem::Platform::RUBY
  s.require_path      = 'lib'
  s.has_rdoc          = true
  s.files             = ['README.rdoc','LICENSE.txt','lib/sixarm_ruby_object_instance_exec.rb']
  s.test_files        = ['test/sixarm_ruby_object_instance_exec_test.rb']


end
