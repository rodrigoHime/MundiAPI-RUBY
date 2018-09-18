# mundi_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # Invoice Update Status Request
  class UpdateInvoiceStatusRequest < BaseModel
    # Status
    # @return [String]
    attr_accessor :status

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['status'] = 'status'
      @_hash
    end

    def initialize(status = nil)
      @status = status
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      status = hash['status']

      # Create object from extracted values.
      UpdateInvoiceStatusRequest.new(status)
    end
  end
end
