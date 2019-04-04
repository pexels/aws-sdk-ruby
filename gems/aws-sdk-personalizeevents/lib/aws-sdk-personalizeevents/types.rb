# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PersonalizeEvents
  module Types

    # @note When making an API call, you may pass Event
    #   data as a hash:
    #
    #       {
    #         event_id: "StringType",
    #         event_type: "StringType", # required
    #         properties: "EventPropertiesJSON", # required
    #         sent_at: Time.now, # required
    #       }
    #
    # @!attribute [rw] event_id
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   @return [String]
    #
    # @!attribute [rw] sent_at
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-events-2018-03-22/Event AWS API Documentation
    #
    class Event < Struct.new(
      :event_id,
      :event_type,
      :properties,
      :sent_at)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutEventsRequest
    #   data as a hash:
    #
    #       {
    #         tracking_id: "StringType", # required
    #         user_id: "StringType",
    #         session_id: "StringType", # required
    #         event_list: [ # required
    #           {
    #             event_id: "StringType",
    #             event_type: "StringType", # required
    #             properties: "EventPropertiesJSON", # required
    #             sent_at: Time.now, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] tracking_id
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   @return [String]
    #
    # @!attribute [rw] event_list
    #   @return [Array<Types::Event>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-events-2018-03-22/PutEventsRequest AWS API Documentation
    #
    class PutEventsRequest < Struct.new(
      :tracking_id,
      :user_id,
      :session_id,
      :event_list)
      include Aws::Structure
    end

  end
end
