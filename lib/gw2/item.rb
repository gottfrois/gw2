module GW2
  module Item
    extend Resource

    def self.all
      get("/items.json")
    end

    def self.details(item_id, lang = 'en')
      get("/items/#{item_id}.json", lang: lang)
    end
  end
end
