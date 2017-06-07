require 'rails_helper'

RSpec.describe CompaniesController, type: :controller do

  describe "GET #show" do

    it "returns http success" do
      company = create(:company)
      get :show, params: {id: company.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    before(:each) do
      @user = create(:user)
      @company_attributes = attributes_for(:company, user: @user)
      post :create, params: {company: @company_attributes.merge(user_id: @user.id)}
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "Company is created with right params" do
      expect(Company.last.name).to eql(@company_attributes[:name])
      expect(Company.last.email).to eql(@company_attributes[:email])
      expect(Company.last.logo).to eql(@company_attributes[:logo])
      expect(Company.last.address).to eql(@company_attributes[:address])
      expect(Company.last.neighboorhood).to eql(@company_attributes[:neighboorhood])
      expect(Company.last.zipcode).to eql(@company_attributes[:zipcode])
      expect(Company.last.city).to eql(@company_attributes[:city])
      expect(Company.last.state).to eql(@company_attributes[:state])
      expect(Company.last.country).to eql(@company_attributes[:country])
      expect(Company.last.description).to eql(@company_attributes[:description])
      expect(Company.last.phone).to eql(@company_attributes[:phone])
      expect(Company.last.website).to eql(@company_attributes[:website])
      expect(Company.last.cause).to eql(@company_attributes[:cause])
      expect(Company.last.user.id).to eql(@user.id)
    end
  end
end
