require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/users', type: :request do
  before do
    @user = create(:user)
    login_user(@user, 'password', login_path)
  end

  describe 'GET /show' do
    context 'ユーザーが存在する場合' do
      it 'リクエストが成功すること' do
        get user_url @user
        expect(response.status).to eq 200 # success
      end

      it 'ユーザー名が表示されていること' do
        get user_url @user
        expect(response.body).to include 'test-name'
      end
    end

    context 'ユーザーが存在しない場合' do
      it 'エラーが発生すること' do
        expect{ get user_url 1 }.to raise_error ActiveRecord::RecordNotFound
      end
    end
  end

  describe 'GET /new' do
    it 'リクエストが成功すること' do
      get new_user_url
      expect(response.status).to eq 200
    end
  end

  describe 'GET /edit' do
    context 'ユーザーが存在する場合' do
      it 'リクエストが成功すること' do
        get edit_user_url @user
        expect(response.status).to eq 200
      end

      it 'ユーザー名が表示されていること' do
        get edit_user_url @user
        expect(response.body).to include 'test-name'
      end
    end

    context 'ユーザーが存在しない場合' do
      it 'リクエストが失敗すること' do
        expect{ get edit_user_url 1 }.to raise_error ActiveRecord::RecordNotFound
      end
    end
  end

  describe 'POST /create' do
    context 'パラメータが正常な場合' do
      it 'リクエストが成功すること' do
        post users_url, params: { user: attributes_for(:user) }
        expect(response.status).to eq 302 # redirect
      end

      it 'ユーザーが登録されることr' do
        expect do
          post users_url, params: { user: attributes_for(:user) }
        end.to change(User, :count).by(1)
      end

      it 'リダイレクトされること' do
        post users_url, params: { user: attributes_for(:user) }
        expect(response).to redirect_to User.last # user_url(User.last)
      end
    end

    context 'パラメータが不正な場合' do
      it 'バリデーションエラーのレスポンスが返ってくること' do
        post users_url, params: { user: attributes_for(:user, :invalid) }
        expect(response.status).to eq 422 # :unprocessable_entity, validation error
      end

      it 'ユーザー登録がされないこと' do
        expect do
          post users_url, params: { user: attributes_for(:user, :invalid) }
        end.to change(User, :count).by(0)
      end

      it 'エラーが表示されること' do
        post users_url, params: { user: attributes_for(:user, :invalid) }
        expect(response.body).to include 'ユーザー登録に失敗しました'
      end
    end
  end

  describe 'PATCH /update' do
    context 'パラメータが正常な場合' do
      it 'リクエストが成功すること' do
        put user_url @user, params: { user: attributes_for(:user, :another_name) }
        expect(response.status).to eq 302
      end

      it 'ユーザー名が更新されること' do
        expect do
          put user_url @user, params: { user: attributes_for(:user, :another_name) }
        end.to change{ User.find(@user.id).name }.from('test-name').to('another-test-name')
      end

      it 'リダイレクトすること' do
        patch user_url @user, params: { user: attributes_for(:user, :another_name) }
        expect(response).to redirect_to User.last
      end
    end

    context 'パラメータが不正な場合' do
      it 'バリデーションエラーのレスポンスが返ってくること' do
        put user_url @user, params: { user: attributes_for(:user, :invalid) }
        expect(response.status).to eq 422
      end

      it 'ユーザー名が変更されないこと' do
        expect do
          put user_url @user, params: { user: attributes_for(:user, :invalid) }
        end.to_not change(User.find(@user.id), :name)
      end

      it 'エラーが表示されること' do
        put user_url @user, params: { user: attributes_for(:user, :invalid) }
        expect(response.body).to include 'ユーザー情報の更新に失敗しました'
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'リクエストが成功すること' do
      expect do
        delete user_url @user
      end.to change(User, :count).by(-1)
    end

    it 'トップページにリダイレクトされること' do
      delete user_url @user
      expect(response).to redirect_to root_url
    end
  end
end
