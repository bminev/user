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

    context 'non-capital letters name' do
      let(:name) { 'peter' }

      it 'return user full name' do
        expect(subject.say_hello).to eq('Peter Toptal')
      end
    end

    context 'non-capital letter surname' do
      let(:surname) { 'toptal' }

      it 'return user full name' do
        expect(subject.say_hello).to eq('Peter Toptal')
      end
    end
  end

  describe '#peter?' do
    subject { described_class.new(name) }

    context 'name is Peter' do
      let(:name) { 'Peter' }

      it 'returns true' do
        expect(subject.peter?).to be_truthy
      end
    end

    context 'name is not Peter' do
      let(:name) { 'Boris' }

      it 'returns false' do
        expect(subject.peter?).to be_falsey
      end
    end
  end
end
