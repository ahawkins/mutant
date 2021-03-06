# encoding: utf-8

require 'spec_helper'

describe Mutant::Mutator::Node::Literal, 'string' do
  let(:random_string) { 'bar' }

  let(:source) { '"foo"' }

  let(:mutations) do
    %W(nil "#{random_string}")
  end

  before do
    Mutant::Random.stub(hex_string: random_string)
  end

  it_should_behave_like 'a mutator'
end
