class RegistrationPage
    include PageObject

    page_url "https://staging.clark.de/de/app/registration"

    text_field(:email, :type => "email")
    text_field(:password, :type => "password")
    button(:submit, :type => "submit")

    def login_with(email = RandomGenerator.new.random_email, password = "Password1")
        puts "    Email: #{email}"
        puts "    Password: #{password}"
        self.email = email
        self.password = password
        submit
    end
end