class TrackingController < ApplicationController
    require "browser"
    require "geocoder"
    def index
    end

    def track
        redirect_link = params[:redirect_to]
        browser = Browser.new(request.user_agent)

        ip_address = request.remote_ip
        os = browser.platform.name
        device = browser.device.name
        referer = request.referrer
        lang = request.env['HTTP_ACCEPT_LANGUAGE']
        result = Geocoder.search(ip_address)
        location = result.first.country

        TrackingLog.create(ip_address: ip_address, device_name: device, os: os, url: redirect_link, referrer: referer, language: lang, location: location)

        redirect_to redirect_link, allow_other_host: true
    end
end
