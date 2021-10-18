module Spree
  module V2
    module Storefront
      class RelationSerializer < BaseSerializer
        set_type :relation

        has_one :related_to, serializer: :related_to_product

      end
    end
  end
end