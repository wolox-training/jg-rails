require 'rails_helper'

describe Api::V1::BookSuggestionsController, type: :controller do
  describe 'POST #create' do
    context 'When creating a valid suggestion' do
      let!(:new_suggestion_attributes) { attributes_for(:book_suggestion) }
      let(:book_creation_request) do
        post :create, params: { book_suggestion: new_suggestion_attributes }
      end
      it 'creates a new suggestion' do
        expect { book_creation_request }.to change { BookSuggestion.count }.by(1)
      end

      it 'responds with 201 status' do
        book_creation_request
        expect(response).to have_http_status(:created)
      end
    end
    

    context 'When creating a suggestion without author' do
      let!(:new_suggestion_attributes) { attributes_for(:book_suggestion, author: nil) }
      let(:book_creation_request) do
        post :create, params: { book_suggestion: new_suggestion_attributes }
      end
      before do
        book_creation_request
      end

      it 'doesn\'t create a new suggestion' do
        expect { book_creation_request }.to change { Rent.count }.by(0)
      end

      it 'responds with 422 status' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
    context 'When creating a suggestion without title' do
      let!(:new_suggestion_attributes) { attributes_for(:book_suggestion, title: nil) }
      let(:book_creation_request) do
        post :create, params: { book_suggestion: new_suggestion_attributes }
      end
      before do
        book_creation_request
      end

      it 'doesn\'t create a new suggestion' do
        expect { book_creation_request }.to change { Rent.count }.by(0)
      end

      it 'responds with 422 status' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
    context 'When creating a suggestion without link' do
      let!(:new_suggestion_attributes) { attributes_for(:book_suggestion, link: nil) }
      let(:book_creation_request) do
        post :create, params: { book_suggestion: new_suggestion_attributes }
      end
      before do
        book_creation_request
      end

      it 'doesn\'t create a new suggestion' do
        expect { book_creation_request }.to change { Rent.count }.by(0)
      end

      it 'responds with 422 status' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
