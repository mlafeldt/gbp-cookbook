require 'chefspec'

describe 'The recipe git-buildpackage::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'git-buildpackage::default' }

  it 'should do something' do
    pending 'Add recipe examples here'
  end
end
