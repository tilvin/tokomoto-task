require "rails_helper"

RSpec.describe InvoicesController, type: :controller do
  it "GET #index" do
    get :index
    expect(response).to be_success
    expect(response).to have_http_status(200)
  end
end
