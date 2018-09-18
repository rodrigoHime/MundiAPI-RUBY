# mundi_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # Request for updating a customer
  class UpdateCustomerRequest < BaseModel
    # Name
    # @return [String]
    attr_accessor :name

    # Email
    # @return [String]
    attr_accessor :email

    # Document number
    # @return [String]
    attr_accessor :document

    # Person type
    # @return [String]
    attr_accessor :type

    # Address
    # @return [CreateAddressRequest]
    attr_accessor :address

    # Metadata
    # @return [Array<String, String>]
    attr_accessor :metadata

    # Metadata
    # @return [CreatePhonesRequest]
    attr_accessor :phones

    # Código de referência do cliente no sistema da loja. Max: 52 caracteres
    # @return [String]
    attr_accessor :code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['email'] = 'email'
      @_hash['document'] = 'document'
      @_hash['type'] = 'type'
      @_hash['address'] = 'address'
      @_hash['metadata'] = 'metadata'
      @_hash['phones'] = 'phones'
      @_hash['code'] = 'code'
      @_hash
    end

    def initialize(name = nil,
                   email = nil,
                   document = nil,
                   type = nil,
                   address = nil,
                   metadata = nil,
                   code = nil,
                   phones = nil)
      @name = name
      @email = email
      @document = document
      @type = type
      @address = address
      @metadata = metadata
      @phones = phones
      @code = code
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      email = hash['email']
      document = hash['document']
      type = hash['type']
      address = CreateAddressRequest.from_hash(hash['address']) if
        hash['address']
      metadata = hash['metadata']
      code = hash['code']
      phones = CreatePhonesRequest.from_hash(hash['phones']) if hash['phones']

      # Create object from extracted values.
      UpdateCustomerRequest.new(name,
                                email,
                                document,
                                type,
                                address,
                                metadata,
                                code,
                                phones)
    end
  end
end
