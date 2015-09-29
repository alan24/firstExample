require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
   
	test "unique_tag" do
   		quote = Quote.create(:author => 'John Fox', :saying => 'We need to generate more than 
   			zero points to win games')
 		expected = 'JF#' + quote.id.to_s
 		actual = quote.unique_tag
 		assert_equal expected, actual
   	end

end
