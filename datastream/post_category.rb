require 'json'
require 'multi_json'
require 'rest-client'
require 'httparty'
require 'crack'

include HTTParty

#post_body = String.new("<XMLDataStreamRequest><Ver>3.0</Ver><Auth><AcctID>20975</AcctID><LoginID>dotcomweavers</LoginID><Password>dotcom123</Password></Auth><Search><Category>#{Category}</Category></Search></XMLDataStreamRequest>")
post_body = String.new("<XMLDataStreamRequest><Ver>3.0</Ver><Auth><AcctID>20975</AcctID><LoginID>dotcomweavers</LoginID><Password>dotcom123</Password></Auth><Search><Category>800</Category></Search></XMLDataStreamRequest>")
CategoryData = RestClient.post "https://www.promoplace.com/ws/ws.dll/XMLDataStream", post_body
CategoryProducts = Crack::XML.parse(CategoryData)

print CategoryProducts