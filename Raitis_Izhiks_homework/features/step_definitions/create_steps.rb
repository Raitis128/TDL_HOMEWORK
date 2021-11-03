Then(/^I am on the create account page$/) do
    @pages.create_account.visit
end

When('I fill the First Name input field') do 
    generated_first_name = Time.now.strftime('%H%M%S%L')
    @pages.create_account.first_name(generated_first_name)
end

When('I fill the Last Name input field') do
    generated_last_name = Time.now.strftime('%H%M%S%L')
    @pages.create_account.last_name(generated_last_name)
end

When('I fill the E-mail input field') do
    generated_email = Time.now.strftime('%H%M%S%L') + '@email.com'
    @pages.create_account.email(generated_email)
end

When('I fill the Address 1 input field') do
    generated_address = Time.now.strftime('%H%M%S%L')
    @pages.create_account.address(generated_address)
end

When('I fill the City input field with {string}') do |city|
    @pages.create_account.city(city)
    puts (city)
end

Then(/^I select Country "(.*)"$/) do |value|
    @pages.create_account.select_country(value)
end

Then(/^I select Region "(.*)"$/) do |value|
    @pages.create_account.select_region(value)
end

When('I fill the ZIP Code input field with {string}') do |zip_code|
    @pages.create_account.zip_code(zip_code)
    puts (zip_code)
end

When('I fill the Login Name input field') do
    generated_login_name = Time.now.strftime('%H%M%S%L')
    @pages.create_account.login_name(generated_login_name)
end

When('I fill the Password input field with {string}') do |password|
    @pages.create_account.password(password)
    puts(password)
end

When('I fill the Password Confirmation input field with {string}') do |password|
    @pages.create_account.password_confirmation(password)
    puts(password)
end

When('I select Privacy Policy checkbox') do 
    @pages.create_account.privacy
end

When('I press Continue') do 
    @pages.create_account.continue
end

Then('I check that I created new account') do
    expect(@pages.create_account.registration_confirmation).to eq('YOUR ACCOUNT HAS BEEN CREATED!')
end


