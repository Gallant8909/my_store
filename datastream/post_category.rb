require 'json'
require 'multi_json'
require 'rest-client'
require 'httparty'
require 'crack'

include HTTParty

def SageSearch
post_body = String.new("<XMLDataStreamRequest><Ver>3.0</Ver><Auth><AcctID>20975</AcctID><LoginID>dotcomweavers</LoginID><Password>dotcom123</Password></Auth><Search><Category>#{search}</Category></Search></XMLDataStreamRequest>")
searchdata = RestClient.post "https://www.promoplace.com/ws/ws.dll/XMLDataStream", post_body
searchproducts = Crack::XML.parse(searchdata)
end

def SageProductData
post_body = String.new("<XMLDataStreamRequest><Ver>3.0</Ver><Auth><AcctID>20975</AcctID><LoginID>dotcomweavers</LoginID><Password>dotcom123</Password></Auth><ProductDetail><ProductID>#{pID}</ProductID></ProductDetail></XMLDataStreamRequest>")
productdata = RestClient.post "https://www.promoplace.com/ws/ws.dll/XMLDataStream", post_body
productdetails = Crack::XML.parse(productdata)
end

post_body = String.new("<XMLDataStreamRequest><Ver>3.0</Ver><Auth><AcctID>20975</AcctID><LoginID>dotcomweavers</LoginID><Password>dotcom123</Password></Auth><ProductDetail><ProductID>product</ProductID></ProductDetail></XMLDataStreamRequest>")
productdata = RestClient.post "https://www.promoplace.com/ws/ws.dll/XMLDataStream", post_body
productdetails = Crack::XML.parse(productdata)

print productdetails



#post_body = String.new("<XMLDataStreamRequest><Ver>3.0</Ver><Auth><AcctID>20975</AcctID><LoginID>dotcomweavers</LoginID><Password>dotcom123</Password></Auth><Search><Category>#{Category}</Category></Search></XMLDataStreamRequest>")
#post_body = String.new("<XMLDataStreamRequest><Ver>3.0</Ver><Auth><AcctID>20975</AcctID><LoginID>dotcomweavers</LoginID><Password>dotcom123</Password></Auth><Search><Category>800</Category></Search></XMLDataStreamRequest>")
#CategoryData = RestClient.post "https://www.promoplace.com/ws/ws.dll/XMLDataStream", post_body
#CategoryProducts = Crack::XML.parse(CategoryData)

#print CategoryProducts



