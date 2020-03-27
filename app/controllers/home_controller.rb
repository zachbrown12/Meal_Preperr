class HomeController < ApplicationController
    skip_before_action :logged_in, only: [:index]
    def index

    end
end
