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
    

    #     context 'When the genre is nil' do
    #         subject(:book) { build(:book, genre: nil) }
    #         it do
    #             is_expected.to be_invalid
    #         end
    #     end

    #     context 'When the Author is nil' do
    #         subject(:book) { create(:book) }

    #         it do
    #             is_expected.to be_invalid
    #         end
    #     end

    #     context 'When the Image is nil' do
    #         subject(:book) { create(:book) }
        
    #         it do
    #             is_expected.to be_invalid
    #         end
    #     end    
            
    #     context 'When the Title is nil' do
    #         subject(:book) { create(:book) }
        
    #         it do
    #             is_expected.to be_invalid
    #         end
    #     end    
            
    #     context 'When the Publisher is nil' do
    #         subject(:book) { create(:book) }
        
    #         it do
    #             is_expected.to be_invalid
    #         end
    #     end    
            
    #     context 'When the Year is nil' do
    #         subject(:book) { create(:book) }

    #         it do
    #             is_expected.to be_invalid
    #         end
    #     end
    
     end
end