class Product < ActiveRecord::Base
  include PgSearch

  pg_search_scope :search,
    against: {
      description: "C",
      name: "A",
    },
    using: {
      trigram: {},
      tsearch: {
        dictionary: "english",
      }
    }

end
