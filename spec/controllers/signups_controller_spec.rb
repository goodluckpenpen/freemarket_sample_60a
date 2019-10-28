require 'rails_helper'

RSpec.describe SignupsController, type: :controller  do

  describe 'GET #registration' do
    it "registrationビューが呼ばれているか" do
      get :registration
      expect(response).to render_template :registration
    end
  end

  describe 'GET #newmember' do
    it "newmemberビューが呼ばれているか" do
      get :newmember
      expect(response).to render_template :newmember
    end
  end

  describe 'GET #phonenumber' do
    it "phonenumberビューが呼ばれているか" do
      get :phonenumber
      expect(response).to render_template :phonenumber
    end
  end

  describe 'GET #authentication' do
    it "authenticationビューが呼ばれているか" do
      get :authentication
      expect(response).to render_template :authentication
    end
  end

  describe 'GET #address' do
    it "addressビューが呼ばれているか" do
      get :address
      expect(response).to render_template :address
    end
  end

  describe 'GET #payment' do
    it "paymentビューが呼ばれているか" do
      get :payment
      expect(response).to render_template :payment
    end
  end

  describe 'POST #create' do
    it "userテーブルにレコードが保存できたか" do
      user = build(:user)
      expect{create :user}.to change(User, :count).by(1)
    end
  end

  describe 'GET #completion' do
    it "completionビューが呼ばれているか" do
      get :completion
      expect(response).to render_template :completion
    end
  end

end