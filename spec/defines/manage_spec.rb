require 'spec_helper'

describe 'user::managed', :type => :define do
    let(:title) { 'example42' }
    let(:facts) {{
        :osfamily => 'RedHat',
        :operatingsystem => 'CentOS'
    }}
    it { should compile }
    it { should contain_user('example42').with_ensure('present') }
end
