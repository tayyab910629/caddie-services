class PricingController < ApplicationController
    def pricing
        @packages= Package.all
     end
end
