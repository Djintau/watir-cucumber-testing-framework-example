require 'securerandom'

# helper class for generating all kinds of random values
class RandomGenerator
    def random_email
        email = "#{SecureRandom.uuid}@clark.de"
    end
end