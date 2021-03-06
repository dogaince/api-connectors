//
// ExecutionAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class ExecutionAPI {
    /**
     Get user’s trade records.
     
     - parameter orderId: (query) OrderID. If not provided, will return user’s trading records. (optional)
     - parameter symbol: (query) Contract type. If order_id not provided, symbol is required. (optional)
     - parameter startTime: (query) Start timestamp point for result. (optional)
     - parameter page: (query) Page. Default getting first page data. (optional)
     - parameter limit: (query) Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func executionGetTrades(orderId: String? = nil, symbol: String? = nil, startTime: String? = nil, page: String? = nil, limit: String? = nil, completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        executionGetTradesWithRequestBuilder(orderId: orderId, symbol: symbol, startTime: startTime, page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get user’s trade records.
     - GET /v2/private/execution/list
     - API Key:
       - type: apiKey api_key (QUERY)
       - name: apiKey
     - API Key:
       - type: apiKey sign (QUERY)
       - name: apiSignature
     - API Key:
       - type: apiKey timestamp (QUERY)
       - name: timestamp
     - examples: [{contentType=application/json, example=""}]
     
     - parameter orderId: (query) OrderID. If not provided, will return user’s trading records. (optional)
     - parameter symbol: (query) Contract type. If order_id not provided, symbol is required. (optional)
     - parameter startTime: (query) Start timestamp point for result. (optional)
     - parameter page: (query) Page. Default getting first page data. (optional)
     - parameter limit: (query) Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional)

     - returns: RequestBuilder<Any> 
     */
    open class func executionGetTradesWithRequestBuilder(orderId: String? = nil, symbol: String? = nil, startTime: String? = nil, page: String? = nil, limit: String? = nil) -> RequestBuilder<Any> {
        let path = "/v2/private/execution/list"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "order_id": orderId, 
            "symbol": symbol, 
            "start_time": startTime, 
            "page": page, 
            "limit": limit
        ])

        let requestBuilder: RequestBuilder<Any>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get user's closed profit and loss records
     
     - parameter symbol: (query) Contract type 
     - parameter startTime: (query) Start timestamp point for result, in second (optional)
     - parameter endTime: (query) End timestamp point for result, in second (optional)
     - parameter execType: (query) Execution type (optional)
     - parameter page: (query) Page. By default, gets first page of data. Maximum of 50 pages (optional)
     - parameter limit: (query) Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func positionsClosePnlRecords(symbol: String, startTime: Int? = nil, endTime: Int? = nil, execType: String? = nil, page: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: Any?,_ error: Error?) -> Void)) {
        positionsClosePnlRecordsWithRequestBuilder(symbol: symbol, startTime: startTime, endTime: endTime, execType: execType, page: page, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get user's closed profit and loss records
     - GET /v2/private/trade/closed-pnl/list
     - API Key:
       - type: apiKey api_key (QUERY)
       - name: apiKey
     - API Key:
       - type: apiKey sign (QUERY)
       - name: apiSignature
     - API Key:
       - type: apiKey timestamp (QUERY)
       - name: timestamp
     - examples: [{contentType=application/json, example=""}]
     
     - parameter symbol: (query) Contract type 
     - parameter startTime: (query) Start timestamp point for result, in second (optional)
     - parameter endTime: (query) End timestamp point for result, in second (optional)
     - parameter execType: (query) Execution type (optional)
     - parameter page: (query) Page. By default, gets first page of data. Maximum of 50 pages (optional)
     - parameter limit: (query) Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page. (optional)

     - returns: RequestBuilder<Any> 
     */
    open class func positionsClosePnlRecordsWithRequestBuilder(symbol: String, startTime: Int? = nil, endTime: Int? = nil, execType: String? = nil, page: Int? = nil, limit: Int? = nil) -> RequestBuilder<Any> {
        let path = "/v2/private/trade/closed-pnl/list"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "symbol": symbol, 
            "start_time": startTime?.encodeToJSON(), 
            "end_time": endTime?.encodeToJSON(), 
            "exec_type": execType, 
            "page": page?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Any>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
