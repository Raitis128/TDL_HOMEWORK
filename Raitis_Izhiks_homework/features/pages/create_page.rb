class CreateAccountPage

    include Capybara::DSL

    def initialize
        @first_name = Element.new(:xpath, '//*[@id="AccountFrm_firstname"]')
        @last_name = Element.new(:xpath, '//*[@id="AccountFrm_lastname"]')
        @email = Element.new(:xpath, '//*[@id="AccountFrm_email"]')
        @address = Element.new(:xpath, '//*[@id="AccountFrm_address_1"]')
        @city = Element.new(:xpath, '//*[@id="AccountFrm_city"]')
        @region_option = Element.new(:xpath, '//*[@id="AccountFrm_zone_id"]/option')
        @region_dropdown = Element.new(:xpath, '//*[@id="AccountFrm_city"]')
        @zip_code = Element.new(:xpath, '//*[@id="AccountFrm_postcode"]')
        @country_option = Element.new(:xpath, '//*[@id="AccountFrm_country_id"]/option')
        @country_dropdown = Element.new(:xpath, '//*[@id="AccountFrm_country_id"]')
        @login_name = Element.new(:xpath, '//*[@id="AccountFrm_loginname"]')
        @password = Element.new(:xpath, '//*[@id="AccountFrm_password"]')
        @password_confirmation = Element.new(:xpath, '//*[@id="AccountFrm_confirm"]')
        @privacy_policy = Element.new(:xpath, '//*[@id="AccountFrm_agree"]')
        @continue_btn = Element.new(:xpath, '//*[@id="AccountFrm"]/div[5]/div/div/button')
        @registration = Element.new(:xpath, '//*[@id="maincontainer"]/div/div[1]/div/h1/span[1]')
    end

    def visit
        Capybara.visit('/index.php?rt=account/create')
    end

    def first_name(text)
        @first_name.set(text)
    end

    def last_name(text)
        @last_name.set(text)
    end

    def email(text)
        @email.set(text)
    end

    def address(text)
        @address.set(text)
    end

    def city(text)
        @city.set(text)
    end

    def select_region(text)
        @region_dropdown.click
        Capybara.find(:xpath, @region_option.path, text: /#{text}/i, match: :first).click
    end

    def zip_code(text)
        @zip_code.set(text)
    end

    def select_country(value)
        @country_dropdown.click
        Capybara.find(:xpath, @country_option.path, text: /#{value}/).click
    end

    def login_name(text)
        @login_name.set(text)
    end

    def password(text)
        @password.set(text)
    end

    def password_confirmation(text)
        @password_confirmation.set(text)
    end

    def privacy
        @privacy_policy.click
    end

    def continue
        @continue_btn.click
    end

    def registration_confirmation
        @registration.text
    end

end