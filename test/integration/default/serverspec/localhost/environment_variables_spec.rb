require 'spec_helper'

describe command('su - vagrant -c "printenv"') do
  its(:stdout) { should match /FOO_TWO=BAR_TWO/ }
  its(:stdout) { should match /FOO_FOUR=BAR_FOUR/ }
end

describe file('/etc/environment') do
  its(:content) { should match /FOO_ONE=BAR_ONE/ }
end

describe file('/etc/profile.d/env_vars_created_by_ansible.sh') do
  its(:content) { should match /FOO_TWO=BAR_TWO/ }
  its(:content) { should match /export FOO_TWO/ }
end

describe file('/home/vagrant/.pam_environment') do
  its(:content) { should match /FOO_THREE=BAR_THREE/ }
end

describe file('/home/vagrant/.profile') do
  its(:content) { should match /FOO_FOUR=BAR_FOUR/ }
  its(:content) { should match /export FOO_FOUR/ }
end
