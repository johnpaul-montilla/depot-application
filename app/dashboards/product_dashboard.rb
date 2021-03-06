require "administrate/base_dashboard"

class ProductDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    line_items: Field::HasMany,
    orders: Field::HasMany,
    id: Field::Number,
    title: Field::String,
    description: Field::Text,
    price: Field::String.with_options(searchable: false),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    image: Field::Paperclip,
    # image_file_name: Field::String,
    # image_content_type: Field::String,
    # image_file_size: Field::Number,
    # image_updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    # :id,
    :title,
    :description,
    :price,
    :image
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :title,
    :description,
    :price,
    :image,
    :created_at,
    :updated_at,
    # :image_file_name,
    # :image_content_type,
    # :image_file_size,
    # :image_updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :title,
    :description,
    :price,
    :image
    # :image_file_name,
    # :image_content_type,
    # :image_file_size,
    # :image_updated_at,
  ].freeze

  # Overwrite this method to customize how products are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(product)
    "#{product.title}"
  end
end
