class LoanResource < JSONAPI::Resource
  attributes :notes, :returned

  has_one :friend
  has_one :article
end
