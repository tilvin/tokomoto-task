require "rails_helper"

RSpec.describe PostsController, type: :controller do

  before do
    @user = create(:user)
    sign_in @user
    @post = create(:post)
  end

  it "GET #index" do
    get :index
    expect(response).to be_success
    expect(response).to have_http_status(200)
  end

  it "GET #show" do
    get :show, params: { id: @post.id }
    expect(response).to be_success
    expect(response).to have_http_status(200)
  end

  it "GET #new" do
    get :new
    expect(response).to be_success
    expect(response).to have_http_status(200)
  end

  describe "POST create" do

    it "change count" do
      post :create, params: { post: attributes_for(:post) }
      expect(Post.count).to eq(2)
    end

    it 'render index template' do
      post :create, params: { post: attributes_for(:post) }
      expect(response).to redirect_to(post_path(Post.last))
    end
  end

  it "GET #edit" do
    get :edit, params: { id: @post.id }
    expect(response).to be_success
    expect(response).to have_http_status(200)
  end

  it "#update" do
    put :update, params: { id: @post.id, post: { title: 'Пост' } }
    expect(@post.reload.title).to eq('Пост')
  end

  it "#destroy" do
    delete :destroy, params: { id: @post.id }
    expect(response).to redirect_to(posts_path)
    expect(Post.count).to eq(0)
  end
end
