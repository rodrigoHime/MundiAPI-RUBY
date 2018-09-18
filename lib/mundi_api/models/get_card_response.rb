# mundi_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MundiApi
  # Response object for getting a credit card
  class GetCardResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :last_four_digits

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :brand

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :holder_name

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :exp_month

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :exp_year

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :updated_at

    # TODO: Write general description for this method
    # @return [GetBillingAddressResponse]
    attr_accessor :billing_address

    # TODO: Write general description for this method
    # @return [GetCustomerResponse]
    attr_accessor :customer

    # TODO: Write general description for this method
    # @return [Array<String, String>]
    attr_accessor :metadata

    # Card type
    # @return [String]
    attr_accessor :type

    # Document number for the card's holder
    # @return [String]
    attr_accessor :holder_document

    # Document number for the card's holder
    # @return [DateTime]
    attr_accessor :deleted_at

    # First six digits
    # @return [String]
    attr_accessor :first_six_digits

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['last_four_digits'] = 'last_four_digits'
      @_hash['brand'] = 'brand'
      @_hash['holder_name'] = 'holder_name'
      @_hash['exp_month'] = 'exp_month'
      @_hash['exp_year'] = 'exp_year'
      @_hash['status'] = 'status'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['billing_address'] = 'billing_address'
      @_hash['customer'] = 'customer'
      @_hash['metadata'] = 'metadata'
      @_hash['type'] = 'type'
      @_hash['holder_document'] = 'holder_document'
      @_hash['deleted_at'] = 'deleted_at'
      @_hash['first_six_digits'] = 'first_six_digits'
      @_hash
    end

    def initialize(id = nil,
                   last_four_digits = nil,
                   brand = nil,
                   holder_name = nil,
                   exp_month = nil,
                   exp_year = nil,
                   status = nil,
                   created_at = nil,
                   updated_at = nil,
                   billing_address = nil,
                   customer = nil,
                   metadata = nil,
                   type = nil,
                   holder_document = nil,
                   first_six_digits = nil,
                   deleted_at = nil)
      @id = id
      @last_four_digits = last_four_digits
      @brand = brand
      @holder_name = holder_name
      @exp_month = exp_month
      @exp_year = exp_year
      @status = status
      @created_at = created_at
      @updated_at = updated_at
      @billing_address = billing_address
      @customer = customer
      @metadata = metadata
      @type = type
      @holder_document = holder_document
      @deleted_at = deleted_at
      @first_six_digits = first_six_digits
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      last_four_digits = hash['last_four_digits']
      brand = hash['brand']
      holder_name = hash['holder_name']
      exp_month = hash['exp_month']
      exp_year = hash['exp_year']
      status = hash['status']
      created_at = APIHelper.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = APIHelper.rfc3339(hash['updated_at']) if hash['updated_at']
      if hash['billing_address']
        billing_address = GetBillingAddressResponse.from_hash(hash['billing_address'])
      end
      customer = GetCustomerResponse.from_hash(hash['customer']) if
        hash['customer']
      metadata = hash['metadata']
      type = hash['type']
      holder_document = hash['holder_document']
      first_six_digits = hash['first_six_digits']
      deleted_at = APIHelper.rfc3339(hash['deleted_at']) if hash['deleted_at']

      # Create object from extracted values.
      GetCardResponse.new(id,
                          last_four_digits,
                          brand,
                          holder_name,
                          exp_month,
                          exp_year,
                          status,
                          created_at,
                          updated_at,
                          billing_address,
                          customer,
                          metadata,
                          type,
                          holder_document,
                          first_six_digits,
                          deleted_at)
    end
  end
end
