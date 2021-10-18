module Spree
  module V2
    module Storefront
      class RelatedToProductSerializer < BaseSerializer
        set_type :related_to_product

        attributes :name, :meta_description, :slug

        has_many :images,
                 object_method_name: :variant_images,
                 id_method_name: :variant_image_ids,
                 record_type: :image,
                 serializer: :image

      end
    end
  end
end