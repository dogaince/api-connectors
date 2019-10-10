# BybitApi.WalletApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**walletGetRecords**](WalletApi.md#walletGetRecords) | **GET** /open-api/wallet/fund/records | Get wallet fund records


<a name="walletGetRecords"></a>
# **walletGetRecords**
> Object walletGetRecords(opts)

Get wallet fund records

### Example
```javascript
var BybitApi = require('bybit_api');

var apiInstance = new BybitApi.WalletApi();

var opts = { 
  'startDate': "startDate_example", // String | Start point for result
  'endDate': "endDate_example", // String | End point for result
  'currency': "currency_example", // String | Currency type
  'walletFundType': "walletFundType_example", // String | wallet fund type
  'page': "page_example", // String | Page. Default getting first page data
  'limit': "limit_example" // String | Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.walletGetRecords(opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **String**| Start point for result | [optional] 
 **endDate** | **String**| End point for result | [optional] 
 **currency** | **String**| Currency type | [optional] 
 **walletFundType** | **String**| wallet fund type | [optional] 
 **page** | **String**| Page. Default getting first page data | [optional] 
 **limit** | **String**| Limit for data size per page, max size is 50. Default as showing 20 pieces of data per page | [optional] 

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined
