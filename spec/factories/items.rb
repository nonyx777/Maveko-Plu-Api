FactoryBot.define do
  factory :item do
    item_code { Faker::Code.npi }
    decor_code { Faker::Code.npi }
    item_name { Faker::Name.name  }
    item_description { Faker::Lorem.sentence }
    image { Faker::Lorem.word }
    dimensions { Faker::Lorem.word  }
    article_group { Faker::Lorem.word   }
    tax_class { Faker::Lorem.word }
    weight { Faker::Lorem.word }
    base_unit_id { create(:unit_of_measure).id }
    target_unit_id { create(:unit_of_measure).id }
    main_item_pricing { association :main_item_pricing }
    customer_item_pricing { association :customer_item_pricing }
  end
end
