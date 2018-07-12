require 'rails_helper'

describe Api::V1::BooksController, type: :controller do
  include_context 'Authenticated User'

  describe 'GET #index' do
    context 'When fetching all the books' do
      let!(:books) { create_list(:book, 3) }

      before do
        get :index
      end

      it 'responses with all the books' do
        expected = ActiveModel::Serializer::CollectionSerializer.new(
          books, each_serializer: EachBookSerializer
        ).to_json
        expect(response.body.to_json) =~ JSON.parse(expected)
      end

      it 'responds with 200 status' do
        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe 'GET #show' do
    context 'When fetching a book' do
      context 'If the book exist' do
        let!(:book) { create(:book) }

        before do
          get :show, params: { id: book.id }
        end

        it 'Responses with the book json' do
          expect(response.body).to eq BookSerializer.new(book).to_json
        end

        it 'Responds with 200 status' do
          expect(response).to have_http_status(:ok)
        end
      end

      context 'If the book does not exist' do
        before do
          get :show, params: { id: 100 }
        end
        it 'Responds with 404 status' do
          expect(response).to have_http_status(:not_found)
        end
      end
    end
  end
end
