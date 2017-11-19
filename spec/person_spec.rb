require 'spec_helper'

describe Person do
  describe '#say_hello' do
    let(:name) { 'Peter' }
    let(:surname) { 'Toptal' }

    subject { described_class.new(name, surname) }

    it 'return user full name' do
      expect(subject.say_hello).to eq('Peter Toptal')
    end
  end
end
