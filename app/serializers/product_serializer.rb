class ProductSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :name, :price, :primary_image, :my_favorite

  def primary_image
    url = object.primary_image.service_url if object.primary_image.attached?
          return url.split("?")[0] if object.primary_image.attached?
  end

  def my_favorite
    return "true" if object.favorites.where(heart: true, user: scope.current_user).length > 0 

end