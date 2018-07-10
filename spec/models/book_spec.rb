require 'rails_helper'

describe Book do
  describe '#create' do
    context 'When fields are complete' do
      subject(:book) { create(:book) }

      it do
        should validate_presence_of(:genre)
      end

      it do
        should validate_presence_of(:author)
      end

      it do
        should validate_presence_of(:image)
      end

      it do
        should validate_presence_of(:title)
      end

      it do
        should validate_presence_of(:publisher)
      end

      it do
        should validate_presence_of(:year)
      end

      it do
        is_expected.to be_valid
      end
    end
  end
end
