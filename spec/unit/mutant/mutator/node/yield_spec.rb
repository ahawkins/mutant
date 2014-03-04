# encoding: utf-8

require 'spec_helper'

describe Mutant::Mutator::Node::Yield, 'yield' do
  let(:source) { 'yield true' }

  let(:mutations) do
    mutations = []
    mutations << 'yield false'
    mutations << 'yield nil'
    mutations << 'yield'
    mutations << 'nil'
  end

  it_should_behave_like 'a mutator'
end
