module Spree
  module CountryActiveDecoratorPresenter
    def name
      translated_name || carmen_name || super
    end

    def carmen_country
      Carmen::Country.coded iso
    end

    def carmen_name
      carmen_country.try :name
    end

    def translated_name
      return unless iso.blank?

      I18n.t("spree.country_names.#{iso}", default: nil)
    end
  end
end
