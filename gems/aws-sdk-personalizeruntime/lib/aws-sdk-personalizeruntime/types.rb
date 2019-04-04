# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PersonalizeRuntime
  module Types

    # @note When making an API call, you may pass GetPersonalizedRankingRequest
    #   data as a hash:
    #
    #       {
    #         campaign_arn: "Arn", # required
    #         input_list: ["ItemID"], # required
    #         user_id: "UserID", # required
    #         search_query: "Query",
    #       }
    #
    # @!attribute [rw] campaign_arn
    #   @return [String]
    #
    # @!attribute [rw] input_list
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_id
    #   @return [String]
    #
    # @!attribute [rw] search_query
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22/GetPersonalizedRankingRequest AWS API Documentation
    #
    class GetPersonalizedRankingRequest < Struct.new(
      :campaign_arn,
      :input_list,
      :user_id,
      :search_query)
      include Aws::Structure
    end

    # @!attribute [rw] personalized_ranking
    #   @return [Array<Types::PredictedItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22/GetPersonalizedRankingResponse AWS API Documentation
    #
    class GetPersonalizedRankingResponse < Struct.new(
      :personalized_ranking)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRecommendationsRequest
    #   data as a hash:
    #
    #       {
    #         campaign_arn: "Arn", # required
    #         item_id: "ItemID",
    #         user_id: "UserID",
    #         num_results: 1,
    #       }
    #
    # @!attribute [rw] campaign_arn
    #   @return [String]
    #
    # @!attribute [rw] item_id
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   @return [String]
    #
    # @!attribute [rw] num_results
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22/GetRecommendationsRequest AWS API Documentation
    #
    class GetRecommendationsRequest < Struct.new(
      :campaign_arn,
      :item_id,
      :user_id,
      :num_results)
      include Aws::Structure
    end

    # @!attribute [rw] item_list
    #   @return [Array<Types::PredictedItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22/GetRecommendationsResponse AWS API Documentation
    #
    class GetRecommendationsResponse < Struct.new(
      :item_list)
      include Aws::Structure
    end

    # @!attribute [rw] item_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22/PredictedItem AWS API Documentation
    #
    class PredictedItem < Struct.new(
      :item_id)
      include Aws::Structure
    end

  end
end
