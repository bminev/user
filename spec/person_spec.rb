require 'spec_helper'

describe Person do
  describe '#say_hello' do
    let(:name) { 'Peter' }
    let(:surname) { 'Toptal' }

    subject { described_class.new(name, surname) }

    it 'return user full name' do
      expect(subject.say_hello).to eq('Peter Toptal')
    end

    context 'there is no surname' do
      let(:surname) { nil }

      subject { described_class.new(name) }

      it 'returns only name when there is only name' do
        expect(subject.say_hello).to eq('Peter')
      end
    end
  end
end
