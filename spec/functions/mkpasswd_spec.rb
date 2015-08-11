require 'spec_helper'

describe 'mkpasswd' do
    context 'wrong numbers of arguments' do
        it { should run.with_params('aaa').and_raise_error(Puppet::ParseError) }
        it { should run.with_params('aaa', 'bbb', 'ccc').and_raise_error(Puppet::ParseError) }
    end
    context 'wrong second argument' do
        it { should run.with_params('aaa', 'bbb').and_raise_error(Puppet::ParseError) }
    end
    context 'proper hash' do
        it { should run.with_params('foobar','12345678').and_return('$1$12345678$z10EIqhVCcU9.xpb4navW0') }
    end
end
