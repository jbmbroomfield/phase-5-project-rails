class PostSerializer
  include JSONAPI::Serializer
  attributes :user_id, :text, :tag, :topic_slug, :public_flags, :guest_name

  attribute :created_at_s do |post, params|
    post.created_at_s(params[:user])
  end

  attribute :my_flags do |post, params|
    post.my_flags(params[:user])
  end

end
