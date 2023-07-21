---
title: Service for namespace CatalogService v
language_tabs:
  - shell: Shell
  - http: HTTP
  - javascript: JavaScript
  - ruby: Ruby
  - python: Python
  - php: PHP
  - java: Java
  - go: Go
toc_footers: []
includes: []
search: true
highlight_theme: darkula
headingLevel: 2

---

<!-- Generator: Widdershins v4.0.1 -->

<h1 id="">Service for namespace CatalogService v</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

This service is located at [/browse/](/browse/)

## Entity Data Model
![ER Diagram](https://yuml.me/diagram/class/[Rounds{bg:lightslategray}],[Rounds]-*[Rounds_holes],[Result{bg:lightslategray}],[Result]-*>[Result_texts],[Result]-0..1>[Result_texts],[Quality{bg:lightslategray}],[Quality]-*>[Quality_texts],[Quality]-0..1>[Quality_texts],[Rounds_holes{bg:lightslategray}],[Rounds_holes]-*[Rounds_holes_shots],[Rounds_holes]-0..1>[Result],[Rounds_holes_shots{bg:lightslategray}],[Rounds_holes_shots]-0..1>[Quality],[Result_texts{bg:lightslategray}],[Quality_texts{bg:lightslategray}],[Quality_texts%20{bg:lawngreen}]++-*>[Quality_texts],[Result_texts%20{bg:lawngreen}]++-*>[Result_texts],[Rounds_holes_shots%20{bg:lawngreen}]++-*>[Rounds_holes_shots],[Rounds_holes%20{bg:lawngreen}]++-*>[Rounds_holes],[Quality%20{bg:lawngreen}]++-*>[Quality],[Result%20{bg:lawngreen}]++-*>[Result],[Rounds%20{bg:lawngreen}]++-*>[Rounds])

### Legend
![Legend](https://yuml.me/diagram/plain;dir:TB;scale:60/class/[External.Type{bg:whitesmoke}],[ComplexType],[EntityType{bg:lightslategray}],[EntitySet/Singleton/Operation{bg:lawngreen}])

Base URLs:

* <a href="/browse">/browse</a>

<h1 id="--i18n-quality-">{i18n>Quality}</h1>

## Retrieve a list of quality.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Quality \
  -H 'Accept: application/json'

```

```http
GET /browse/Quality HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Quality',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Quality',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Quality', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Quality', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Quality");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Quality", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Quality`

<h3 id="retrieve-a-list-of-quality.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$top|query|integer|false|Show only the first n items, see [Paging - Top](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptiontop)|
|$skip|query|integer|false|Skip the first n items, see [Paging - Skip](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionskip)|
|$search|query|string|false|Search items by search phrases, see [Searching](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionsearch)|
|$filter|query|string|false|Filter items by property values, see [Filtering](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionfilter)|
|$count|query|boolean|false|Include count of items, see [Count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount)|
|$orderby|query|array[string]|false|Order items by property values, see [Sorting](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionorderby)|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|
|$expand|query|array[string]|false|The value of $expand query option is a comma-separated list of navigation property names, stream property names, or $value indicating the stream content of a media-entity. The corresponding related entities and stream values will be represented inline, see [Expand](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionexpand)|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$orderby|name|
|$orderby|name desc|
|$orderby|descr|
|$orderby|descr desc|
|$orderby|code|
|$orderby|code desc|
|$select|name|
|$select|descr|
|$select|code|
|$expand|*|
|$expand|texts|
|$expand|localized|

> Example responses

> 200 Response

```json
{
  "@odata.count": 0,
  "value": [
    {
      "name": "string",
      "descr": "string",
      "code": "string",
      "texts": [
        {
          "locale": "string",
          "name": "string",
          "descr": "string",
          "code": "string"
        }
      ],
      "texts@odata.count": 0,
      "localized": {
        "locale": "string",
        "name": "string",
        "descr": "string",
        "code": "string"
      }
    }
  ]
}
```

<h3 id="retrieve-a-list-of-quality.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved quality|Inline|
|4XX|Unknown|Error|[error](#schemaerror)|

<h3 id="retrieve-a-list-of-quality.-responseschema">Response Schema</h3>

Status Code **200**

*Collection of Quality*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» @odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|

*anyOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|number|false|none|none|

*or*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|string|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» value|[[CatalogService.Quality](#schemacatalogservice.quality)]|false|none|none|
|»» Quality|[CatalogService.Quality](#schemacatalogservice.quality)|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» descr|string¦null|false|none|none|
|»»» code|string|false|none|none|
|»»» texts|[[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)]|false|none|none|
|»»»» Quality_texts|[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)|false|none|none|
|»»»»» locale|string|false|none|none|
|»»»»» name|string¦null|false|none|none|
|»»»»» descr|string¦null|false|none|none|
|»»»»» code|string|false|none|none|
|»»» texts@odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|»»» localized|[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)¦null|false|none|none|
|»»»» locale|string|false|none|none|
|»»»» name|string¦null|false|none|none|
|»»»» descr|string¦null|false|none|none|
|»»»» code|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## Create a single quality.

> Code samples

```shell
# You can also use wget
curl -X POST /browse/Quality \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST /browse/Quality HTTP/1.1

Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "name": "string",
  "descr": "string",
  "code": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/browse/Quality',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post '/browse/Quality',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('/browse/Quality', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/browse/Quality', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Quality");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/browse/Quality", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /Quality`

> Body parameter

```json
{
  "name": "string",
  "descr": "string",
  "code": "string"
}
```

<h3 id="create-a-single-quality.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CatalogService.Quality-create](#schemacatalogservice.quality-create)|true|New quality|

> Example responses

> 201 Response

```json
{
  "name": "string",
  "descr": "string",
  "code": "string",
  "texts": [
    {
      "locale": "string",
      "name": "string",
      "descr": "string",
      "code": "string"
    }
  ],
  "texts@odata.count": 0,
  "localized": {
    "locale": "string",
    "name": "string",
    "descr": "string",
    "code": "string"
  }
}
```

<h3 id="create-a-single-quality.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created quality|[CatalogService.Quality](#schemacatalogservice.quality)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Retrieve a single quality.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Quality('{code}') \
  -H 'Accept: application/json'

```

```http
GET /browse/Quality('{code}') HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Quality('{code}')',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Quality('{code}')',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Quality('{code}')', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Quality('{code}')', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Quality('{code}')");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Quality('{code}')", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Quality('{code}')`

<h3 id="retrieve-a-single-quality.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|
|$expand|query|array[string]|false|The value of $expand query option is a comma-separated list of navigation property names, stream property names, or $value indicating the stream content of a media-entity. The corresponding related entities and stream values will be represented inline, see [Expand](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionexpand)|
|code|path|string|true|key: code|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$select|name|
|$select|descr|
|$select|code|
|$expand|*|
|$expand|texts|
|$expand|localized|

> Example responses

> 200 Response

```json
{
  "name": "string",
  "descr": "string",
  "code": "string",
  "texts": [
    {
      "locale": "string",
      "name": "string",
      "descr": "string",
      "code": "string"
    }
  ],
  "texts@odata.count": 0,
  "localized": {
    "locale": "string",
    "name": "string",
    "descr": "string",
    "code": "string"
  }
}
```

<h3 id="retrieve-a-single-quality.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved quality|[CatalogService.Quality](#schemacatalogservice.quality)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Change a single quality.

> Code samples

```shell
# You can also use wget
curl -X PATCH /browse/Quality('{code}') \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
PATCH /browse/Quality('{code}') HTTP/1.1

Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "name": "string",
  "descr": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/browse/Quality('{code}')',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.patch '/browse/Quality('{code}')',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.patch('/browse/Quality('{code}')', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','/browse/Quality('{code}')', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Quality('{code}')");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "/browse/Quality('{code}')", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /Quality('{code}')`

> Body parameter

```json
{
  "name": "string",
  "descr": "string"
}
```

<h3 id="change-a-single-quality.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CatalogService.Quality-update](#schemacatalogservice.quality-update)|true|New property values|
|code|path|string|true|key: code|

> Example responses

> 4XX Response

```json
{
  "error": {
    "code": "string",
    "message": "string",
    "target": "string",
    "details": [
      {
        "code": "string",
        "message": "string",
        "target": "string"
      }
    ],
    "innererror": {}
  }
}
```

<h3 id="change-a-single-quality.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Success|None|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Delete a single quality.

> Code samples

```shell
# You can also use wget
curl -X DELETE /browse/Quality('{code}') \
  -H 'Accept: application/json'

```

```http
DELETE /browse/Quality('{code}') HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Quality('{code}')',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.delete '/browse/Quality('{code}')',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.delete('/browse/Quality('{code}')', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','/browse/Quality('{code}')', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Quality('{code}')");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "/browse/Quality('{code}')", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /Quality('{code}')`

<h3 id="delete-a-single-quality.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|code|path|string|true|key: code|

> Example responses

> 4XX Response

```json
{
  "error": {
    "code": "string",
    "message": "string",
    "target": "string",
    "details": [
      {
        "code": "string",
        "message": "string",
        "target": "string"
      }
    ],
    "innererror": {}
  }
}
```

<h3 id="delete-a-single-quality.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Success|None|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Retrieve localized of a {i18n> quality}.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Quality('{code}')/localized \
  -H 'Accept: application/json'

```

```http
GET /browse/Quality('{code}')/localized HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Quality('{code}')/localized',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Quality('{code}')/localized',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Quality('{code}')/localized', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Quality('{code}')/localized', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Quality('{code}')/localized");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Quality('{code}')/localized", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Quality('{code}')/localized`

<h3 id="retrieve-localized-of-a-{i18n>-quality}.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|
|code|path|string|true|key: code|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$select|locale|
|$select|name|
|$select|descr|
|$select|code|

> Example responses

> 200 Response

```json
{
  "locale": "string",
  "name": "string",
  "descr": "string",
  "code": "string"
}
```

<h3 id="retrieve-localized-of-a-{i18n>-quality}.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved localized|[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Retrieve a list of texts of a {i18n> quality}.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Quality('{code}')/texts \
  -H 'Accept: application/json'

```

```http
GET /browse/Quality('{code}')/texts HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Quality('{code}')/texts',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Quality('{code}')/texts',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Quality('{code}')/texts', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Quality('{code}')/texts', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Quality('{code}')/texts");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Quality('{code}')/texts", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Quality('{code}')/texts`

<h3 id="retrieve-a-list-of-texts-of-a-{i18n>-quality}.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$top|query|integer|false|Show only the first n items, see [Paging - Top](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptiontop)|
|$skip|query|integer|false|Skip the first n items, see [Paging - Skip](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionskip)|
|$search|query|string|false|Search items by search phrases, see [Searching](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionsearch)|
|$filter|query|string|false|Filter items by property values, see [Filtering](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionfilter)|
|$count|query|boolean|false|Include count of items, see [Count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount)|
|$orderby|query|array[string]|false|Order items by property values, see [Sorting](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionorderby)|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|
|code|path|string|true|key: code|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$orderby|locale|
|$orderby|locale desc|
|$orderby|name|
|$orderby|name desc|
|$orderby|descr|
|$orderby|descr desc|
|$orderby|code|
|$orderby|code desc|
|$select|locale|
|$select|name|
|$select|descr|
|$select|code|

> Example responses

> 200 Response

```json
{
  "@odata.count": 0,
  "value": [
    {
      "locale": "string",
      "name": "string",
      "descr": "string",
      "code": "string"
    }
  ]
}
```

<h3 id="retrieve-a-list-of-texts-of-a-{i18n>-quality}.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved texts|Inline|
|4XX|Unknown|Error|[error](#schemaerror)|

<h3 id="retrieve-a-list-of-texts-of-a-{i18n>-quality}.-responseschema">Response Schema</h3>

Status Code **200**

*Collection of Quality_texts*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» @odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|

*anyOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|number|false|none|none|

*or*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|string|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» value|[[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)]|false|none|none|
|»» Quality_texts|[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)|false|none|none|
|»»» locale|string|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» descr|string¦null|false|none|none|
|»»» code|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## Create a single text of a {i18n> quality}.

> Code samples

```shell
# You can also use wget
curl -X POST /browse/Quality('{code}')/texts \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST /browse/Quality('{code}')/texts HTTP/1.1

Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "locale": "string",
  "name": "string",
  "descr": "string",
  "code": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/browse/Quality('{code}')/texts',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post '/browse/Quality('{code}')/texts',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('/browse/Quality('{code}')/texts', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/browse/Quality('{code}')/texts', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Quality('{code}')/texts");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/browse/Quality('{code}')/texts", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /Quality('{code}')/texts`

> Body parameter

```json
{
  "locale": "string",
  "name": "string",
  "descr": "string",
  "code": "string"
}
```

<h3 id="create-a-single-text-of-a-{i18n>-quality}.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CatalogService.Quality_texts-create](#schemacatalogservice.quality_texts-create)|true|New text|
|code|path|string|true|key: code|

> Example responses

> 201 Response

```json
{
  "locale": "string",
  "name": "string",
  "descr": "string",
  "code": "string"
}
```

<h3 id="create-a-single-text-of-a-{i18n>-quality}.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created text|[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="-quality_texts">Quality_texts</h1>

## Retrieve a list of quality_texts.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Quality_texts \
  -H 'Accept: application/json'

```

```http
GET /browse/Quality_texts HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Quality_texts',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Quality_texts',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Quality_texts', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Quality_texts', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Quality_texts");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Quality_texts", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Quality_texts`

<h3 id="retrieve-a-list-of-quality_texts.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$top|query|integer|false|Show only the first n items, see [Paging - Top](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptiontop)|
|$skip|query|integer|false|Skip the first n items, see [Paging - Skip](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionskip)|
|$search|query|string|false|Search items by search phrases, see [Searching](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionsearch)|
|$filter|query|string|false|Filter items by property values, see [Filtering](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionfilter)|
|$count|query|boolean|false|Include count of items, see [Count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount)|
|$orderby|query|array[string]|false|Order items by property values, see [Sorting](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionorderby)|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$orderby|locale|
|$orderby|locale desc|
|$orderby|name|
|$orderby|name desc|
|$orderby|descr|
|$orderby|descr desc|
|$orderby|code|
|$orderby|code desc|
|$select|locale|
|$select|name|
|$select|descr|
|$select|code|

> Example responses

> 200 Response

```json
{
  "@odata.count": 0,
  "value": [
    {
      "locale": "string",
      "name": "string",
      "descr": "string",
      "code": "string"
    }
  ]
}
```

<h3 id="retrieve-a-list-of-quality_texts.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved quality_texts|Inline|
|4XX|Unknown|Error|[error](#schemaerror)|

<h3 id="retrieve-a-list-of-quality_texts.-responseschema">Response Schema</h3>

Status Code **200**

*Collection of Quality_texts*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» @odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|

*anyOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|number|false|none|none|

*or*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|string|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» value|[[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)]|false|none|none|
|»» Quality_texts|[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)|false|none|none|
|»»» locale|string|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» descr|string¦null|false|none|none|
|»»» code|string|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## Create a single quality_text.

> Code samples

```shell
# You can also use wget
curl -X POST /browse/Quality_texts \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST /browse/Quality_texts HTTP/1.1

Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "locale": "string",
  "name": "string",
  "descr": "string",
  "code": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/browse/Quality_texts',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post '/browse/Quality_texts',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('/browse/Quality_texts', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/browse/Quality_texts', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Quality_texts");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/browse/Quality_texts", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /Quality_texts`

> Body parameter

```json
{
  "locale": "string",
  "name": "string",
  "descr": "string",
  "code": "string"
}
```

<h3 id="create-a-single-quality_text.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CatalogService.Quality_texts-create](#schemacatalogservice.quality_texts-create)|true|New quality_text|

> Example responses

> 201 Response

```json
{
  "locale": "string",
  "name": "string",
  "descr": "string",
  "code": "string"
}
```

<h3 id="create-a-single-quality_text.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created quality_text|[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Retrieve a single quality_text.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Quality_texts(locale='{locale}',code='{code}') \
  -H 'Accept: application/json'

```

```http
GET /browse/Quality_texts(locale='{locale}',code='{code}') HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Quality_texts(locale='{locale}',code='{code}')',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Quality_texts(locale='{locale}',code='{code}')',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Quality_texts(locale='{locale}',code='{code}')', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Quality_texts(locale='{locale}',code='{code}')', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Quality_texts(locale='{locale}',code='{code}')");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Quality_texts(locale='{locale}',code='{code}')", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Quality_texts(locale='{locale}',code='{code}')`

<h3 id="retrieve-a-single-quality_text.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|
|locale|path|string|true|key: locale|
|code|path|string|true|key: code|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$select|locale|
|$select|name|
|$select|descr|
|$select|code|

> Example responses

> 200 Response

```json
{
  "locale": "string",
  "name": "string",
  "descr": "string",
  "code": "string"
}
```

<h3 id="retrieve-a-single-quality_text.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved quality_text|[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Change a single quality_text.

> Code samples

```shell
# You can also use wget
curl -X PATCH /browse/Quality_texts(locale='{locale}',code='{code}') \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
PATCH /browse/Quality_texts(locale='{locale}',code='{code}') HTTP/1.1

Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "name": "string",
  "descr": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/browse/Quality_texts(locale='{locale}',code='{code}')',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.patch '/browse/Quality_texts(locale='{locale}',code='{code}')',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.patch('/browse/Quality_texts(locale='{locale}',code='{code}')', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','/browse/Quality_texts(locale='{locale}',code='{code}')', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Quality_texts(locale='{locale}',code='{code}')");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "/browse/Quality_texts(locale='{locale}',code='{code}')", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /Quality_texts(locale='{locale}',code='{code}')`

> Body parameter

```json
{
  "name": "string",
  "descr": "string"
}
```

<h3 id="change-a-single-quality_text.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CatalogService.Quality_texts-update](#schemacatalogservice.quality_texts-update)|true|New property values|
|locale|path|string|true|key: locale|
|code|path|string|true|key: code|

> Example responses

> 4XX Response

```json
{
  "error": {
    "code": "string",
    "message": "string",
    "target": "string",
    "details": [
      {
        "code": "string",
        "message": "string",
        "target": "string"
      }
    ],
    "innererror": {}
  }
}
```

<h3 id="change-a-single-quality_text.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Success|None|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Delete a single quality_text.

> Code samples

```shell
# You can also use wget
curl -X DELETE /browse/Quality_texts(locale='{locale}',code='{code}') \
  -H 'Accept: application/json'

```

```http
DELETE /browse/Quality_texts(locale='{locale}',code='{code}') HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Quality_texts(locale='{locale}',code='{code}')',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.delete '/browse/Quality_texts(locale='{locale}',code='{code}')',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.delete('/browse/Quality_texts(locale='{locale}',code='{code}')', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','/browse/Quality_texts(locale='{locale}',code='{code}')', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Quality_texts(locale='{locale}',code='{code}')");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "/browse/Quality_texts(locale='{locale}',code='{code}')", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /Quality_texts(locale='{locale}',code='{code}')`

<h3 id="delete-a-single-quality_text.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|locale|path|string|true|key: locale|
|code|path|string|true|key: code|

> Example responses

> 4XX Response

```json
{
  "error": {
    "code": "string",
    "message": "string",
    "target": "string",
    "details": [
      {
        "code": "string",
        "message": "string",
        "target": "string"
      }
    ],
    "innererror": {}
  }
}
```

<h3 id="delete-a-single-quality_text.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Success|None|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="-result">Result</h1>

## Retrieve a list of result.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Result \
  -H 'Accept: application/json'

```

```http
GET /browse/Result HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Result',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Result',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Result', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Result', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Result");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Result", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Result`

<h3 id="retrieve-a-list-of-result.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$top|query|integer|false|Show only the first n items, see [Paging - Top](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptiontop)|
|$skip|query|integer|false|Skip the first n items, see [Paging - Skip](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionskip)|
|$search|query|string|false|Search items by search phrases, see [Searching](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionsearch)|
|$filter|query|string|false|Filter items by property values, see [Filtering](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionfilter)|
|$count|query|boolean|false|Include count of items, see [Count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount)|
|$orderby|query|array[string]|false|Order items by property values, see [Sorting](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionorderby)|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|
|$expand|query|array[string]|false|The value of $expand query option is a comma-separated list of navigation property names, stream property names, or $value indicating the stream content of a media-entity. The corresponding related entities and stream values will be represented inline, see [Expand](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionexpand)|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$orderby|name|
|$orderby|name desc|
|$orderby|descr|
|$orderby|descr desc|
|$orderby|code|
|$orderby|code desc|
|$select|name|
|$select|descr|
|$select|code|
|$expand|*|
|$expand|texts|
|$expand|localized|

> Example responses

> 200 Response

```json
{
  "@odata.count": 0,
  "value": [
    {
      "name": "string",
      "descr": "string",
      "code": 0,
      "texts": [
        {
          "locale": "string",
          "name": "string",
          "descr": "string",
          "code": 0
        }
      ],
      "texts@odata.count": 0,
      "localized": {
        "locale": "string",
        "name": "string",
        "descr": "string",
        "code": 0
      }
    }
  ]
}
```

<h3 id="retrieve-a-list-of-result.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved result|Inline|
|4XX|Unknown|Error|[error](#schemaerror)|

<h3 id="retrieve-a-list-of-result.-responseschema">Response Schema</h3>

Status Code **200**

*Collection of Result*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» @odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|

*anyOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|number|false|none|none|

*or*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|string|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» value|[[CatalogService.Result](#schemacatalogservice.result)]|false|none|none|
|»» Result|[CatalogService.Result](#schemacatalogservice.result)|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» descr|string¦null|false|none|none|
|»»» code|integer(int32)|false|none|none|
|»»» texts|[[CatalogService.Result_texts](#schemacatalogservice.result_texts)]|false|none|none|
|»»»» Result_texts|[CatalogService.Result_texts](#schemacatalogservice.result_texts)|false|none|none|
|»»»»» locale|string|false|none|none|
|»»»»» name|string¦null|false|none|none|
|»»»»» descr|string¦null|false|none|none|
|»»»»» code|integer(int32)|false|none|none|
|»»» texts@odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|»»» localized|[CatalogService.Result_texts](#schemacatalogservice.result_texts)¦null|false|none|none|
|»»»» locale|string|false|none|none|
|»»»» name|string¦null|false|none|none|
|»»»» descr|string¦null|false|none|none|
|»»»» code|integer(int32)|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## Create a single result.

> Code samples

```shell
# You can also use wget
curl -X POST /browse/Result \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST /browse/Result HTTP/1.1

Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "name": "string",
  "descr": "string",
  "code": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/browse/Result',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post '/browse/Result',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('/browse/Result', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/browse/Result', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Result");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/browse/Result", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /Result`

> Body parameter

```json
{
  "name": "string",
  "descr": "string",
  "code": 0
}
```

<h3 id="create-a-single-result.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CatalogService.Result-create](#schemacatalogservice.result-create)|true|New result|

> Example responses

> 201 Response

```json
{
  "name": "string",
  "descr": "string",
  "code": 0,
  "texts": [
    {
      "locale": "string",
      "name": "string",
      "descr": "string",
      "code": 0
    }
  ],
  "texts@odata.count": 0,
  "localized": {
    "locale": "string",
    "name": "string",
    "descr": "string",
    "code": 0
  }
}
```

<h3 id="create-a-single-result.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created result|[CatalogService.Result](#schemacatalogservice.result)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Retrieve a single result.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Result({code}) \
  -H 'Accept: application/json'

```

```http
GET /browse/Result({code}) HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Result({code})',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Result({code})',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Result({code})', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Result({code})', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Result({code})");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Result({code})", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Result({code})`

<h3 id="retrieve-a-single-result.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|
|$expand|query|array[string]|false|The value of $expand query option is a comma-separated list of navigation property names, stream property names, or $value indicating the stream content of a media-entity. The corresponding related entities and stream values will be represented inline, see [Expand](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionexpand)|
|code|path|integer(int32)|true|key: code|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$select|name|
|$select|descr|
|$select|code|
|$expand|*|
|$expand|texts|
|$expand|localized|

> Example responses

> 200 Response

```json
{
  "name": "string",
  "descr": "string",
  "code": 0,
  "texts": [
    {
      "locale": "string",
      "name": "string",
      "descr": "string",
      "code": 0
    }
  ],
  "texts@odata.count": 0,
  "localized": {
    "locale": "string",
    "name": "string",
    "descr": "string",
    "code": 0
  }
}
```

<h3 id="retrieve-a-single-result.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved result|[CatalogService.Result](#schemacatalogservice.result)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Change a single result.

> Code samples

```shell
# You can also use wget
curl -X PATCH /browse/Result({code}) \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
PATCH /browse/Result({code}) HTTP/1.1

Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "name": "string",
  "descr": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/browse/Result({code})',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.patch '/browse/Result({code})',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.patch('/browse/Result({code})', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','/browse/Result({code})', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Result({code})");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "/browse/Result({code})", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /Result({code})`

> Body parameter

```json
{
  "name": "string",
  "descr": "string"
}
```

<h3 id="change-a-single-result.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CatalogService.Result-update](#schemacatalogservice.result-update)|true|New property values|
|code|path|integer(int32)|true|key: code|

> Example responses

> 4XX Response

```json
{
  "error": {
    "code": "string",
    "message": "string",
    "target": "string",
    "details": [
      {
        "code": "string",
        "message": "string",
        "target": "string"
      }
    ],
    "innererror": {}
  }
}
```

<h3 id="change-a-single-result.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Success|None|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Delete a single result.

> Code samples

```shell
# You can also use wget
curl -X DELETE /browse/Result({code}) \
  -H 'Accept: application/json'

```

```http
DELETE /browse/Result({code}) HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Result({code})',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.delete '/browse/Result({code})',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.delete('/browse/Result({code})', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','/browse/Result({code})', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Result({code})");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "/browse/Result({code})", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /Result({code})`

<h3 id="delete-a-single-result.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|code|path|integer(int32)|true|key: code|

> Example responses

> 4XX Response

```json
{
  "error": {
    "code": "string",
    "message": "string",
    "target": "string",
    "details": [
      {
        "code": "string",
        "message": "string",
        "target": "string"
      }
    ],
    "innererror": {}
  }
}
```

<h3 id="delete-a-single-result.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Success|None|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Retrieve localized of a result.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Result({code})/localized \
  -H 'Accept: application/json'

```

```http
GET /browse/Result({code})/localized HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Result({code})/localized',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Result({code})/localized',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Result({code})/localized', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Result({code})/localized', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Result({code})/localized");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Result({code})/localized", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Result({code})/localized`

<h3 id="retrieve-localized-of-a-result.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|
|code|path|integer(int32)|true|key: code|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$select|locale|
|$select|name|
|$select|descr|
|$select|code|

> Example responses

> 200 Response

```json
{
  "locale": "string",
  "name": "string",
  "descr": "string",
  "code": 0
}
```

<h3 id="retrieve-localized-of-a-result.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved localized|[CatalogService.Result_texts](#schemacatalogservice.result_texts)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Retrieve a list of texts of a result.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Result({code})/texts \
  -H 'Accept: application/json'

```

```http
GET /browse/Result({code})/texts HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Result({code})/texts',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Result({code})/texts',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Result({code})/texts', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Result({code})/texts', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Result({code})/texts");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Result({code})/texts", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Result({code})/texts`

<h3 id="retrieve-a-list-of-texts-of-a-result.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$top|query|integer|false|Show only the first n items, see [Paging - Top](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptiontop)|
|$skip|query|integer|false|Skip the first n items, see [Paging - Skip](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionskip)|
|$search|query|string|false|Search items by search phrases, see [Searching](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionsearch)|
|$filter|query|string|false|Filter items by property values, see [Filtering](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionfilter)|
|$count|query|boolean|false|Include count of items, see [Count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount)|
|$orderby|query|array[string]|false|Order items by property values, see [Sorting](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionorderby)|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|
|code|path|integer(int32)|true|key: code|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$orderby|locale|
|$orderby|locale desc|
|$orderby|name|
|$orderby|name desc|
|$orderby|descr|
|$orderby|descr desc|
|$orderby|code|
|$orderby|code desc|
|$select|locale|
|$select|name|
|$select|descr|
|$select|code|

> Example responses

> 200 Response

```json
{
  "@odata.count": 0,
  "value": [
    {
      "locale": "string",
      "name": "string",
      "descr": "string",
      "code": 0
    }
  ]
}
```

<h3 id="retrieve-a-list-of-texts-of-a-result.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved texts|Inline|
|4XX|Unknown|Error|[error](#schemaerror)|

<h3 id="retrieve-a-list-of-texts-of-a-result.-responseschema">Response Schema</h3>

Status Code **200**

*Collection of Result_texts*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» @odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|

*anyOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|number|false|none|none|

*or*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|string|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» value|[[CatalogService.Result_texts](#schemacatalogservice.result_texts)]|false|none|none|
|»» Result_texts|[CatalogService.Result_texts](#schemacatalogservice.result_texts)|false|none|none|
|»»» locale|string|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» descr|string¦null|false|none|none|
|»»» code|integer(int32)|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## Create a single text of a result.

> Code samples

```shell
# You can also use wget
curl -X POST /browse/Result({code})/texts \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST /browse/Result({code})/texts HTTP/1.1

Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "locale": "string",
  "name": "string",
  "descr": "string",
  "code": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/browse/Result({code})/texts',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post '/browse/Result({code})/texts',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('/browse/Result({code})/texts', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/browse/Result({code})/texts', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Result({code})/texts");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/browse/Result({code})/texts", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /Result({code})/texts`

> Body parameter

```json
{
  "locale": "string",
  "name": "string",
  "descr": "string",
  "code": 0
}
```

<h3 id="create-a-single-text-of-a-result.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CatalogService.Result_texts-create](#schemacatalogservice.result_texts-create)|true|New text|
|code|path|integer(int32)|true|key: code|

> Example responses

> 201 Response

```json
{
  "locale": "string",
  "name": "string",
  "descr": "string",
  "code": 0
}
```

<h3 id="create-a-single-text-of-a-result.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created text|[CatalogService.Result_texts](#schemacatalogservice.result_texts)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="-result_texts">Result_texts</h1>

## Retrieve a list of result_texts.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Result_texts \
  -H 'Accept: application/json'

```

```http
GET /browse/Result_texts HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Result_texts',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Result_texts',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Result_texts', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Result_texts', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Result_texts");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Result_texts", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Result_texts`

<h3 id="retrieve-a-list-of-result_texts.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$top|query|integer|false|Show only the first n items, see [Paging - Top](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptiontop)|
|$skip|query|integer|false|Skip the first n items, see [Paging - Skip](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionskip)|
|$search|query|string|false|Search items by search phrases, see [Searching](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionsearch)|
|$filter|query|string|false|Filter items by property values, see [Filtering](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionfilter)|
|$count|query|boolean|false|Include count of items, see [Count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount)|
|$orderby|query|array[string]|false|Order items by property values, see [Sorting](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionorderby)|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$orderby|locale|
|$orderby|locale desc|
|$orderby|name|
|$orderby|name desc|
|$orderby|descr|
|$orderby|descr desc|
|$orderby|code|
|$orderby|code desc|
|$select|locale|
|$select|name|
|$select|descr|
|$select|code|

> Example responses

> 200 Response

```json
{
  "@odata.count": 0,
  "value": [
    {
      "locale": "string",
      "name": "string",
      "descr": "string",
      "code": 0
    }
  ]
}
```

<h3 id="retrieve-a-list-of-result_texts.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved result_texts|Inline|
|4XX|Unknown|Error|[error](#schemaerror)|

<h3 id="retrieve-a-list-of-result_texts.-responseschema">Response Schema</h3>

Status Code **200**

*Collection of Result_texts*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» @odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|

*anyOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|number|false|none|none|

*or*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|string|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» value|[[CatalogService.Result_texts](#schemacatalogservice.result_texts)]|false|none|none|
|»» Result_texts|[CatalogService.Result_texts](#schemacatalogservice.result_texts)|false|none|none|
|»»» locale|string|false|none|none|
|»»» name|string¦null|false|none|none|
|»»» descr|string¦null|false|none|none|
|»»» code|integer(int32)|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## Create a single result_text.

> Code samples

```shell
# You can also use wget
curl -X POST /browse/Result_texts \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST /browse/Result_texts HTTP/1.1

Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "locale": "string",
  "name": "string",
  "descr": "string",
  "code": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/browse/Result_texts',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post '/browse/Result_texts',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('/browse/Result_texts', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/browse/Result_texts', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Result_texts");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/browse/Result_texts", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /Result_texts`

> Body parameter

```json
{
  "locale": "string",
  "name": "string",
  "descr": "string",
  "code": 0
}
```

<h3 id="create-a-single-result_text.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CatalogService.Result_texts-create](#schemacatalogservice.result_texts-create)|true|New result_text|

> Example responses

> 201 Response

```json
{
  "locale": "string",
  "name": "string",
  "descr": "string",
  "code": 0
}
```

<h3 id="create-a-single-result_text.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created result_text|[CatalogService.Result_texts](#schemacatalogservice.result_texts)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Retrieve a single result_text.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Result_texts(locale='{locale}',code={code}) \
  -H 'Accept: application/json'

```

```http
GET /browse/Result_texts(locale='{locale}',code={code}) HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Result_texts(locale='{locale}',code={code})',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Result_texts(locale='{locale}',code={code})',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Result_texts(locale='{locale}',code={code})', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Result_texts(locale='{locale}',code={code})', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Result_texts(locale='{locale}',code={code})");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Result_texts(locale='{locale}',code={code})", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Result_texts(locale='{locale}',code={code})`

<h3 id="retrieve-a-single-result_text.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|
|locale|path|string|true|key: locale|
|code|path|integer(int32)|true|key: code|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$select|locale|
|$select|name|
|$select|descr|
|$select|code|

> Example responses

> 200 Response

```json
{
  "locale": "string",
  "name": "string",
  "descr": "string",
  "code": 0
}
```

<h3 id="retrieve-a-single-result_text.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved result_text|[CatalogService.Result_texts](#schemacatalogservice.result_texts)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Change a single result_text.

> Code samples

```shell
# You can also use wget
curl -X PATCH /browse/Result_texts(locale='{locale}',code={code}) \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
PATCH /browse/Result_texts(locale='{locale}',code={code}) HTTP/1.1

Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "name": "string",
  "descr": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/browse/Result_texts(locale='{locale}',code={code})',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.patch '/browse/Result_texts(locale='{locale}',code={code})',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.patch('/browse/Result_texts(locale='{locale}',code={code})', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','/browse/Result_texts(locale='{locale}',code={code})', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Result_texts(locale='{locale}',code={code})");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "/browse/Result_texts(locale='{locale}',code={code})", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /Result_texts(locale='{locale}',code={code})`

> Body parameter

```json
{
  "name": "string",
  "descr": "string"
}
```

<h3 id="change-a-single-result_text.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CatalogService.Result_texts-update](#schemacatalogservice.result_texts-update)|true|New property values|
|locale|path|string|true|key: locale|
|code|path|integer(int32)|true|key: code|

> Example responses

> 4XX Response

```json
{
  "error": {
    "code": "string",
    "message": "string",
    "target": "string",
    "details": [
      {
        "code": "string",
        "message": "string",
        "target": "string"
      }
    ],
    "innererror": {}
  }
}
```

<h3 id="change-a-single-result_text.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Success|None|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Delete a single result_text.

> Code samples

```shell
# You can also use wget
curl -X DELETE /browse/Result_texts(locale='{locale}',code={code}) \
  -H 'Accept: application/json'

```

```http
DELETE /browse/Result_texts(locale='{locale}',code={code}) HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Result_texts(locale='{locale}',code={code})',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.delete '/browse/Result_texts(locale='{locale}',code={code})',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.delete('/browse/Result_texts(locale='{locale}',code={code})', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','/browse/Result_texts(locale='{locale}',code={code})', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Result_texts(locale='{locale}',code={code})");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "/browse/Result_texts(locale='{locale}',code={code})", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /Result_texts(locale='{locale}',code={code})`

<h3 id="delete-a-single-result_text.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|locale|path|string|true|key: locale|
|code|path|integer(int32)|true|key: code|

> Example responses

> 4XX Response

```json
{
  "error": {
    "code": "string",
    "message": "string",
    "target": "string",
    "details": [
      {
        "code": "string",
        "message": "string",
        "target": "string"
      }
    ],
    "innererror": {}
  }
}
```

<h3 id="delete-a-single-result_text.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Success|None|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="-rounds">Rounds</h1>

## Retrieve a list of rounds.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Rounds \
  -H 'Accept: application/json'

```

```http
GET /browse/Rounds HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Rounds',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Rounds',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Rounds', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Rounds', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Rounds");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Rounds", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Rounds`

<h3 id="retrieve-a-list-of-rounds.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$top|query|integer|false|Show only the first n items, see [Paging - Top](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptiontop)|
|$skip|query|integer|false|Skip the first n items, see [Paging - Skip](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionskip)|
|$search|query|string|false|Search items by search phrases, see [Searching](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionsearch)|
|$filter|query|string|false|Filter items by property values, see [Filtering](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionfilter)|
|$count|query|boolean|false|Include count of items, see [Count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount)|
|$orderby|query|array[string]|false|Order items by property values, see [Sorting](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionorderby)|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|
|$expand|query|array[string]|false|The value of $expand query option is a comma-separated list of navigation property names, stream property names, or $value indicating the stream content of a media-entity. The corresponding related entities and stream values will be represented inline, see [Expand](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionexpand)|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$orderby|ID|
|$orderby|ID desc|
|$orderby|createdAt|
|$orderby|createdAt desc|
|$orderby|createdBy|
|$orderby|createdBy desc|
|$orderby|modifiedAt|
|$orderby|modifiedAt desc|
|$orderby|modifiedBy|
|$orderby|modifiedBy desc|
|$orderby|title|
|$orderby|title desc|
|$select|ID|
|$select|createdAt|
|$select|createdBy|
|$select|modifiedAt|
|$select|modifiedBy|
|$select|title|
|$expand|*|
|$expand|holes|

> Example responses

> 200 Response

```json
{
  "@odata.count": 0,
  "value": [
    {
      "ID": "01234567-89ab-cdef-0123-456789abcdef",
      "createdAt": "2017-04-13T15:51:04.0000000Z",
      "createdBy": "string",
      "modifiedAt": "2017-04-13T15:51:04.0000000Z",
      "modifiedBy": "string",
      "title": "string",
      "holes": [
        {
          "up_": {},
          "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
          "ID": "01234567-89ab-cdef-0123-456789abcdef",
          "holeNumber": 0,
          "shots": [
            {
              "up_": {},
              "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
              "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
              "ID": "01234567-89ab-cdef-0123-456789abcdef",
              "quality": {
                "name": "string",
                "descr": "string",
                "code": "string",
                "texts": [
                  {
                    "locale": "string",
                    "name": "string",
                    "descr": "string",
                    "code": "string"
                  }
                ],
                "texts@odata.count": 0,
                "localized": {
                  "locale": "string",
                  "name": "string",
                  "descr": "string",
                  "code": "string"
                }
              },
              "quality_code": "string",
              "distance": 0
            }
          ],
          "shots@odata.count": 0,
          "par": 0,
          "score": 0,
          "result": {
            "name": "string",
            "descr": "string",
            "code": 0,
            "texts": [
              {
                "locale": "string",
                "name": "string",
                "descr": "string",
                "code": 0
              }
            ],
            "texts@odata.count": 0,
            "localized": {
              "locale": "string",
              "name": "string",
              "descr": "string",
              "code": 0
            }
          },
          "result_code": 0
        }
      ],
      "holes@odata.count": 0
    }
  ]
}
```

<h3 id="retrieve-a-list-of-rounds.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved rounds|Inline|
|4XX|Unknown|Error|[error](#schemaerror)|

<h3 id="retrieve-a-list-of-rounds.-responseschema">Response Schema</h3>

Status Code **200**

*Collection of Rounds*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» @odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|

*anyOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|number|false|none|none|

*or*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|string|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» value|[[CatalogService.Rounds](#schemacatalogservice.rounds)]|false|none|none|
|»» Rounds|[CatalogService.Rounds](#schemacatalogservice.rounds)|false|none|none|
|»»» ID|string(uuid)|false|none|none|
|»»» createdAt|string(date-time)¦null|false|none|none|
|»»» createdBy|string¦null|false|none|{i18n>UserID.Description}|
|»»» modifiedAt|string(date-time)¦null|false|none|none|
|»»» modifiedBy|string¦null|false|none|{i18n>UserID.Description}|
|»»» title|string¦null|false|none|none|
|»»» holes|[[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)]|false|none|none|
|»»»» Rounds_holes|[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)|false|none|none|
|»»»»» up_|[CatalogService.Rounds](#schemacatalogservice.rounds)|false|none|none|
|»»»»» up__ID|string(uuid)|false|none|none|
|»»»»» ID|string(uuid)|false|none|none|
|»»»»» holeNumber|integer(int32)¦null|false|none|none|
|»»»»» shots|[[CatalogService.Rounds_holes_shots](#schemacatalogservice.rounds_holes_shots)]|false|none|none|
|»»»»»» Rounds_holes_shots|[CatalogService.Rounds_holes_shots](#schemacatalogservice.rounds_holes_shots)|false|none|none|
|»»»»»»» up_|[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)|false|none|none|
|»»»»»»» up__up__ID|string(uuid)|false|none|none|
|»»»»»»» up__ID|string(uuid)|false|none|none|
|»»»»»»» ID|string(uuid)|false|none|none|
|»»»»»»» quality|[CatalogService.Quality](#schemacatalogservice.quality)¦null|false|none|none|
|»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»» descr|string¦null|false|none|none|
|»»»»»»»» code|string|false|none|none|
|»»»»»»»» texts|[[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)]|false|none|none|
|»»»»»»»»» Quality_texts|[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)|false|none|none|
|»»»»»»»»»» locale|string|false|none|none|
|»»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»»» descr|string¦null|false|none|none|
|»»»»»»»»»» code|string|false|none|none|
|»»»»»»»» texts@odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|»»»»»»»» localized|[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)¦null|false|none|none|
|»»»»»»»»» locale|string|false|none|none|
|»»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»»» descr|string¦null|false|none|none|
|»»»»»»»»» code|string|false|none|none|
|»»»»»»» quality_code|string¦null|false|none|none|
|»»»»»»» distance|integer(int32)¦null|false|none|none|
|»»»»» shots@odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|»»»»» par|integer(int32)¦null|false|none|none|
|»»»»» score|integer(int32)¦null|false|none|none|
|»»»»» result|[CatalogService.Result](#schemacatalogservice.result)¦null|false|none|none|
|»»»»»» name|string¦null|false|none|none|
|»»»»»» descr|string¦null|false|none|none|
|»»»»»» code|integer(int32)|false|none|none|
|»»»»»» texts|[[CatalogService.Result_texts](#schemacatalogservice.result_texts)]|false|none|none|
|»»»»»»» Result_texts|[CatalogService.Result_texts](#schemacatalogservice.result_texts)|false|none|none|
|»»»»»»»» locale|string|false|none|none|
|»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»» descr|string¦null|false|none|none|
|»»»»»»»» code|integer(int32)|false|none|none|
|»»»»»» texts@odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|»»»»»» localized|[CatalogService.Result_texts](#schemacatalogservice.result_texts)¦null|false|none|none|
|»»»»»»» locale|string|false|none|none|
|»»»»»»» name|string¦null|false|none|none|
|»»»»»»» descr|string¦null|false|none|none|
|»»»»»»» code|integer(int32)|false|none|none|
|»»»»» result_code|integer(int32)¦null|false|none|none|
|»»» holes@odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|

<aside class="success">
This operation does not require authentication
</aside>

## Create a single round.

> Code samples

```shell
# You can also use wget
curl -X POST /browse/Rounds \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST /browse/Rounds HTTP/1.1

Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "title": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/browse/Rounds',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post '/browse/Rounds',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('/browse/Rounds', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/browse/Rounds', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Rounds");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/browse/Rounds", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /Rounds`

> Body parameter

```json
{
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "title": "string"
}
```

<h3 id="create-a-single-round.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CatalogService.Rounds-create](#schemacatalogservice.rounds-create)|true|New round|

> Example responses

> 201 Response

```json
{
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "createdAt": "2017-04-13T15:51:04.0000000Z",
  "createdBy": "string",
  "modifiedAt": "2017-04-13T15:51:04.0000000Z",
  "modifiedBy": "string",
  "title": "string",
  "holes": [
    {
      "up_": {
        "ID": "01234567-89ab-cdef-0123-456789abcdef",
        "createdAt": "2017-04-13T15:51:04.0000000Z",
        "createdBy": "string",
        "modifiedAt": "2017-04-13T15:51:04.0000000Z",
        "modifiedBy": "string",
        "title": "string",
        "holes": [],
        "holes@odata.count": 0
      },
      "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
      "ID": "01234567-89ab-cdef-0123-456789abcdef",
      "holeNumber": 0,
      "shots": [
        {
          "up_": {},
          "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
          "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
          "ID": "01234567-89ab-cdef-0123-456789abcdef",
          "quality": {
            "name": "string",
            "descr": "string",
            "code": "string",
            "texts": [
              {
                "locale": "string",
                "name": "string",
                "descr": "string",
                "code": "string"
              }
            ],
            "texts@odata.count": 0,
            "localized": {
              "locale": "string",
              "name": "string",
              "descr": "string",
              "code": "string"
            }
          },
          "quality_code": "string",
          "distance": 0
        }
      ],
      "shots@odata.count": 0,
      "par": 0,
      "score": 0,
      "result": {
        "name": "string",
        "descr": "string",
        "code": 0,
        "texts": [
          {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": 0
          }
        ],
        "texts@odata.count": 0,
        "localized": {
          "locale": "string",
          "name": "string",
          "descr": "string",
          "code": 0
        }
      },
      "result_code": 0
    }
  ],
  "holes@odata.count": 0
}
```

<h3 id="create-a-single-round.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created round|[CatalogService.Rounds](#schemacatalogservice.rounds)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Retrieve a single round.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Rounds({ID}) \
  -H 'Accept: application/json'

```

```http
GET /browse/Rounds({ID}) HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Rounds({ID})',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Rounds({ID})',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Rounds({ID})', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Rounds({ID})', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Rounds({ID})");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Rounds({ID})", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Rounds({ID})`

<h3 id="retrieve-a-single-round.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|
|$expand|query|array[string]|false|The value of $expand query option is a comma-separated list of navigation property names, stream property names, or $value indicating the stream content of a media-entity. The corresponding related entities and stream values will be represented inline, see [Expand](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionexpand)|
|ID|path|string(uuid)|true|key: ID|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$select|ID|
|$select|createdAt|
|$select|createdBy|
|$select|modifiedAt|
|$select|modifiedBy|
|$select|title|
|$expand|*|
|$expand|holes|

> Example responses

> 200 Response

```json
{
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "createdAt": "2017-04-13T15:51:04.0000000Z",
  "createdBy": "string",
  "modifiedAt": "2017-04-13T15:51:04.0000000Z",
  "modifiedBy": "string",
  "title": "string",
  "holes": [
    {
      "up_": {
        "ID": "01234567-89ab-cdef-0123-456789abcdef",
        "createdAt": "2017-04-13T15:51:04.0000000Z",
        "createdBy": "string",
        "modifiedAt": "2017-04-13T15:51:04.0000000Z",
        "modifiedBy": "string",
        "title": "string",
        "holes": [],
        "holes@odata.count": 0
      },
      "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
      "ID": "01234567-89ab-cdef-0123-456789abcdef",
      "holeNumber": 0,
      "shots": [
        {
          "up_": {},
          "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
          "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
          "ID": "01234567-89ab-cdef-0123-456789abcdef",
          "quality": {
            "name": "string",
            "descr": "string",
            "code": "string",
            "texts": [
              {
                "locale": "string",
                "name": "string",
                "descr": "string",
                "code": "string"
              }
            ],
            "texts@odata.count": 0,
            "localized": {
              "locale": "string",
              "name": "string",
              "descr": "string",
              "code": "string"
            }
          },
          "quality_code": "string",
          "distance": 0
        }
      ],
      "shots@odata.count": 0,
      "par": 0,
      "score": 0,
      "result": {
        "name": "string",
        "descr": "string",
        "code": 0,
        "texts": [
          {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": 0
          }
        ],
        "texts@odata.count": 0,
        "localized": {
          "locale": "string",
          "name": "string",
          "descr": "string",
          "code": 0
        }
      },
      "result_code": 0
    }
  ],
  "holes@odata.count": 0
}
```

<h3 id="retrieve-a-single-round.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved round|[CatalogService.Rounds](#schemacatalogservice.rounds)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Change a single round.

> Code samples

```shell
# You can also use wget
curl -X PATCH /browse/Rounds({ID}) \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
PATCH /browse/Rounds({ID}) HTTP/1.1

Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "title": "string"
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/browse/Rounds({ID})',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.patch '/browse/Rounds({ID})',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.patch('/browse/Rounds({ID})', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','/browse/Rounds({ID})', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Rounds({ID})");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "/browse/Rounds({ID})", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /Rounds({ID})`

> Body parameter

```json
{
  "title": "string"
}
```

<h3 id="change-a-single-round.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CatalogService.Rounds-update](#schemacatalogservice.rounds-update)|true|New property values|
|ID|path|string(uuid)|true|key: ID|

> Example responses

> 4XX Response

```json
{
  "error": {
    "code": "string",
    "message": "string",
    "target": "string",
    "details": [
      {
        "code": "string",
        "message": "string",
        "target": "string"
      }
    ],
    "innererror": {}
  }
}
```

<h3 id="change-a-single-round.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Success|None|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Delete a single round.

> Code samples

```shell
# You can also use wget
curl -X DELETE /browse/Rounds({ID}) \
  -H 'Accept: application/json'

```

```http
DELETE /browse/Rounds({ID}) HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Rounds({ID})',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.delete '/browse/Rounds({ID})',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.delete('/browse/Rounds({ID})', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','/browse/Rounds({ID})', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Rounds({ID})");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "/browse/Rounds({ID})", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /Rounds({ID})`

<h3 id="delete-a-single-round.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|ID|path|string(uuid)|true|key: ID|

> Example responses

> 4XX Response

```json
{
  "error": {
    "code": "string",
    "message": "string",
    "target": "string",
    "details": [
      {
        "code": "string",
        "message": "string",
        "target": "string"
      }
    ],
    "innererror": {}
  }
}
```

<h3 id="delete-a-single-round.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Success|None|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Retrieve a list of holes of a round.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Rounds({ID})/holes \
  -H 'Accept: application/json'

```

```http
GET /browse/Rounds({ID})/holes HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Rounds({ID})/holes',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Rounds({ID})/holes',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Rounds({ID})/holes', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Rounds({ID})/holes', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Rounds({ID})/holes");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Rounds({ID})/holes", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Rounds({ID})/holes`

<h3 id="retrieve-a-list-of-holes-of-a-round.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$top|query|integer|false|Show only the first n items, see [Paging - Top](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptiontop)|
|$skip|query|integer|false|Skip the first n items, see [Paging - Skip](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionskip)|
|$search|query|string|false|Search items by search phrases, see [Searching](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionsearch)|
|$filter|query|string|false|Filter items by property values, see [Filtering](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionfilter)|
|$count|query|boolean|false|Include count of items, see [Count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount)|
|$orderby|query|array[string]|false|Order items by property values, see [Sorting](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionorderby)|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|
|$expand|query|array[string]|false|The value of $expand query option is a comma-separated list of navigation property names, stream property names, or $value indicating the stream content of a media-entity. The corresponding related entities and stream values will be represented inline, see [Expand](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionexpand)|
|ID|path|string(uuid)|true|key: ID|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$orderby|up__ID|
|$orderby|up__ID desc|
|$orderby|ID|
|$orderby|ID desc|
|$orderby|holeNumber|
|$orderby|holeNumber desc|
|$orderby|par|
|$orderby|par desc|
|$orderby|score|
|$orderby|score desc|
|$orderby|result_code|
|$orderby|result_code desc|
|$select|up__ID|
|$select|ID|
|$select|holeNumber|
|$select|par|
|$select|score|
|$select|result_code|
|$expand|*|
|$expand|up_|
|$expand|shots|
|$expand|result|

> Example responses

> 200 Response

```json
{
  "@odata.count": 0,
  "value": [
    {
      "up_": {
        "ID": "01234567-89ab-cdef-0123-456789abcdef",
        "createdAt": "2017-04-13T15:51:04.0000000Z",
        "createdBy": "string",
        "modifiedAt": "2017-04-13T15:51:04.0000000Z",
        "modifiedBy": "string",
        "title": "string",
        "holes": [
          {}
        ],
        "holes@odata.count": 0
      },
      "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
      "ID": "01234567-89ab-cdef-0123-456789abcdef",
      "holeNumber": 0,
      "shots": [
        {
          "up_": {},
          "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
          "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
          "ID": "01234567-89ab-cdef-0123-456789abcdef",
          "quality": {
            "name": "string",
            "descr": "string",
            "code": "string",
            "texts": [
              {
                "locale": "string",
                "name": "string",
                "descr": "string",
                "code": "string"
              }
            ],
            "texts@odata.count": 0,
            "localized": {
              "locale": "string",
              "name": "string",
              "descr": "string",
              "code": "string"
            }
          },
          "quality_code": "string",
          "distance": 0
        }
      ],
      "shots@odata.count": 0,
      "par": 0,
      "score": 0,
      "result": {
        "name": "string",
        "descr": "string",
        "code": 0,
        "texts": [
          {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": 0
          }
        ],
        "texts@odata.count": 0,
        "localized": {
          "locale": "string",
          "name": "string",
          "descr": "string",
          "code": 0
        }
      },
      "result_code": 0
    }
  ]
}
```

<h3 id="retrieve-a-list-of-holes-of-a-round.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved holes|Inline|
|4XX|Unknown|Error|[error](#schemaerror)|

<h3 id="retrieve-a-list-of-holes-of-a-round.-responseschema">Response Schema</h3>

Status Code **200**

*Collection of Rounds_holes*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» @odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|

*anyOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|number|false|none|none|

*or*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|string|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» value|[[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)]|false|none|none|
|»» Rounds_holes|[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)|false|none|none|
|»»» up_|[CatalogService.Rounds](#schemacatalogservice.rounds)|false|none|none|
|»»»» ID|string(uuid)|false|none|none|
|»»»» createdAt|string(date-time)¦null|false|none|none|
|»»»» createdBy|string¦null|false|none|{i18n>UserID.Description}|
|»»»» modifiedAt|string(date-time)¦null|false|none|none|
|»»»» modifiedBy|string¦null|false|none|{i18n>UserID.Description}|
|»»»» title|string¦null|false|none|none|
|»»»» holes|[[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)]|false|none|none|
|»»»»» Rounds_holes|[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)|false|none|none|
|»»»» holes@odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|»»» up__ID|string(uuid)|false|none|none|
|»»» ID|string(uuid)|false|none|none|
|»»» holeNumber|integer(int32)¦null|false|none|none|
|»»» shots|[[CatalogService.Rounds_holes_shots](#schemacatalogservice.rounds_holes_shots)]|false|none|none|
|»»»» Rounds_holes_shots|[CatalogService.Rounds_holes_shots](#schemacatalogservice.rounds_holes_shots)|false|none|none|
|»»»»» up_|[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)|false|none|none|
|»»»»» up__up__ID|string(uuid)|false|none|none|
|»»»»» up__ID|string(uuid)|false|none|none|
|»»»»» ID|string(uuid)|false|none|none|
|»»»»» quality|[CatalogService.Quality](#schemacatalogservice.quality)¦null|false|none|none|
|»»»»»» name|string¦null|false|none|none|
|»»»»»» descr|string¦null|false|none|none|
|»»»»»» code|string|false|none|none|
|»»»»»» texts|[[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)]|false|none|none|
|»»»»»»» Quality_texts|[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)|false|none|none|
|»»»»»»»» locale|string|false|none|none|
|»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»» descr|string¦null|false|none|none|
|»»»»»»»» code|string|false|none|none|
|»»»»»» texts@odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|»»»»»» localized|[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)¦null|false|none|none|
|»»»»»»» locale|string|false|none|none|
|»»»»»»» name|string¦null|false|none|none|
|»»»»»»» descr|string¦null|false|none|none|
|»»»»»»» code|string|false|none|none|
|»»»»» quality_code|string¦null|false|none|none|
|»»»»» distance|integer(int32)¦null|false|none|none|
|»»» shots@odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|»»» par|integer(int32)¦null|false|none|none|
|»»» score|integer(int32)¦null|false|none|none|
|»»» result|[CatalogService.Result](#schemacatalogservice.result)¦null|false|none|none|
|»»»» name|string¦null|false|none|none|
|»»»» descr|string¦null|false|none|none|
|»»»» code|integer(int32)|false|none|none|
|»»»» texts|[[CatalogService.Result_texts](#schemacatalogservice.result_texts)]|false|none|none|
|»»»»» Result_texts|[CatalogService.Result_texts](#schemacatalogservice.result_texts)|false|none|none|
|»»»»»» locale|string|false|none|none|
|»»»»»» name|string¦null|false|none|none|
|»»»»»» descr|string¦null|false|none|none|
|»»»»»» code|integer(int32)|false|none|none|
|»»»» texts@odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|»»»» localized|[CatalogService.Result_texts](#schemacatalogservice.result_texts)¦null|false|none|none|
|»»»»» locale|string|false|none|none|
|»»»»» name|string¦null|false|none|none|
|»»»»» descr|string¦null|false|none|none|
|»»»»» code|integer(int32)|false|none|none|
|»»» result_code|integer(int32)¦null|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## Create a single hole of a round.

> Code samples

```shell
# You can also use wget
curl -X POST /browse/Rounds({ID})/holes \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST /browse/Rounds({ID})/holes HTTP/1.1

Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "holeNumber": 0,
  "par": 0,
  "result_code": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/browse/Rounds({ID})/holes',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post '/browse/Rounds({ID})/holes',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('/browse/Rounds({ID})/holes', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/browse/Rounds({ID})/holes', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Rounds({ID})/holes");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/browse/Rounds({ID})/holes", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /Rounds({ID})/holes`

> Body parameter

```json
{
  "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "holeNumber": 0,
  "par": 0,
  "result_code": 0
}
```

<h3 id="create-a-single-hole-of-a-round.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CatalogService.Rounds_holes-create](#schemacatalogservice.rounds_holes-create)|true|New hole|
|ID|path|string(uuid)|true|key: ID|

> Example responses

> 201 Response

```json
{
  "up_": {
    "ID": "01234567-89ab-cdef-0123-456789abcdef",
    "createdAt": "2017-04-13T15:51:04.0000000Z",
    "createdBy": "string",
    "modifiedAt": "2017-04-13T15:51:04.0000000Z",
    "modifiedBy": "string",
    "title": "string",
    "holes": [
      {
        "up_": {},
        "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
        "ID": "01234567-89ab-cdef-0123-456789abcdef",
        "holeNumber": 0,
        "shots": [
          {
            "up_": {},
            "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
            "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
            "ID": "01234567-89ab-cdef-0123-456789abcdef",
            "quality": {
              "name": "string",
              "descr": "string",
              "code": "string",
              "texts": [
                {
                  "locale": "string",
                  "name": "string",
                  "descr": "string",
                  "code": "string"
                }
              ],
              "texts@odata.count": 0,
              "localized": {
                "locale": "string",
                "name": "string",
                "descr": "string",
                "code": "string"
              }
            },
            "quality_code": "string",
            "distance": 0
          }
        ],
        "shots@odata.count": 0,
        "par": 0,
        "score": 0,
        "result": {
          "name": "string",
          "descr": "string",
          "code": 0,
          "texts": [
            {
              "locale": "string",
              "name": "string",
              "descr": "string",
              "code": 0
            }
          ],
          "texts@odata.count": 0,
          "localized": {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": 0
          }
        },
        "result_code": 0
      }
    ],
    "holes@odata.count": 0
  },
  "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "holeNumber": 0,
  "shots": [
    {
      "up_": {
        "up_": {
          "ID": "01234567-89ab-cdef-0123-456789abcdef",
          "createdAt": "2017-04-13T15:51:04.0000000Z",
          "createdBy": "string",
          "modifiedAt": "2017-04-13T15:51:04.0000000Z",
          "modifiedBy": "string",
          "title": "string",
          "holes": [
            {}
          ],
          "holes@odata.count": 0
        },
        "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
        "ID": "01234567-89ab-cdef-0123-456789abcdef",
        "holeNumber": 0,
        "shots": [],
        "shots@odata.count": 0,
        "par": 0,
        "score": 0,
        "result": {
          "name": "string",
          "descr": "string",
          "code": 0,
          "texts": [
            {
              "locale": "string",
              "name": "string",
              "descr": "string",
              "code": 0
            }
          ],
          "texts@odata.count": 0,
          "localized": {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": 0
          }
        },
        "result_code": 0
      },
      "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
      "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
      "ID": "01234567-89ab-cdef-0123-456789abcdef",
      "quality": {
        "name": "string",
        "descr": "string",
        "code": "string",
        "texts": [
          {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": "string"
          }
        ],
        "texts@odata.count": 0,
        "localized": {
          "locale": "string",
          "name": "string",
          "descr": "string",
          "code": "string"
        }
      },
      "quality_code": "string",
      "distance": 0
    }
  ],
  "shots@odata.count": 0,
  "par": 0,
  "score": 0,
  "result": {
    "name": "string",
    "descr": "string",
    "code": 0,
    "texts": [
      {
        "locale": "string",
        "name": "string",
        "descr": "string",
        "code": 0
      }
    ],
    "texts@odata.count": 0,
    "localized": {
      "locale": "string",
      "name": "string",
      "descr": "string",
      "code": 0
    }
  },
  "result_code": 0
}
```

<h3 id="create-a-single-hole-of-a-round.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created hole|[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="-rounds_holes">Rounds_holes</h1>

## Retrieve a list of rounds_holes.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Rounds_holes \
  -H 'Accept: application/json'

```

```http
GET /browse/Rounds_holes HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Rounds_holes',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Rounds_holes',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Rounds_holes', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Rounds_holes', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Rounds_holes");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Rounds_holes", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Rounds_holes`

<h3 id="retrieve-a-list-of-rounds_holes.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$top|query|integer|false|Show only the first n items, see [Paging - Top](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptiontop)|
|$skip|query|integer|false|Skip the first n items, see [Paging - Skip](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionskip)|
|$search|query|string|false|Search items by search phrases, see [Searching](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionsearch)|
|$filter|query|string|false|Filter items by property values, see [Filtering](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionfilter)|
|$count|query|boolean|false|Include count of items, see [Count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount)|
|$orderby|query|array[string]|false|Order items by property values, see [Sorting](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionorderby)|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|
|$expand|query|array[string]|false|The value of $expand query option is a comma-separated list of navigation property names, stream property names, or $value indicating the stream content of a media-entity. The corresponding related entities and stream values will be represented inline, see [Expand](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionexpand)|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$orderby|up__ID|
|$orderby|up__ID desc|
|$orderby|ID|
|$orderby|ID desc|
|$orderby|holeNumber|
|$orderby|holeNumber desc|
|$orderby|par|
|$orderby|par desc|
|$orderby|score|
|$orderby|score desc|
|$orderby|result_code|
|$orderby|result_code desc|
|$select|up__ID|
|$select|ID|
|$select|holeNumber|
|$select|par|
|$select|score|
|$select|result_code|
|$expand|*|
|$expand|up_|
|$expand|shots|
|$expand|result|

> Example responses

> 200 Response

```json
{
  "@odata.count": 0,
  "value": [
    {
      "up_": {
        "ID": "01234567-89ab-cdef-0123-456789abcdef",
        "createdAt": "2017-04-13T15:51:04.0000000Z",
        "createdBy": "string",
        "modifiedAt": "2017-04-13T15:51:04.0000000Z",
        "modifiedBy": "string",
        "title": "string",
        "holes": [
          {}
        ],
        "holes@odata.count": 0
      },
      "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
      "ID": "01234567-89ab-cdef-0123-456789abcdef",
      "holeNumber": 0,
      "shots": [
        {
          "up_": {},
          "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
          "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
          "ID": "01234567-89ab-cdef-0123-456789abcdef",
          "quality": {
            "name": "string",
            "descr": "string",
            "code": "string",
            "texts": [
              {
                "locale": "string",
                "name": "string",
                "descr": "string",
                "code": "string"
              }
            ],
            "texts@odata.count": 0,
            "localized": {
              "locale": "string",
              "name": "string",
              "descr": "string",
              "code": "string"
            }
          },
          "quality_code": "string",
          "distance": 0
        }
      ],
      "shots@odata.count": 0,
      "par": 0,
      "score": 0,
      "result": {
        "name": "string",
        "descr": "string",
        "code": 0,
        "texts": [
          {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": 0
          }
        ],
        "texts@odata.count": 0,
        "localized": {
          "locale": "string",
          "name": "string",
          "descr": "string",
          "code": 0
        }
      },
      "result_code": 0
    }
  ]
}
```

<h3 id="retrieve-a-list-of-rounds_holes.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved rounds_holes|Inline|
|4XX|Unknown|Error|[error](#schemaerror)|

<h3 id="retrieve-a-list-of-rounds_holes.-responseschema">Response Schema</h3>

Status Code **200**

*Collection of Rounds_holes*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» @odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|

*anyOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|number|false|none|none|

*or*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|string|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» value|[[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)]|false|none|none|
|»» Rounds_holes|[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)|false|none|none|
|»»» up_|[CatalogService.Rounds](#schemacatalogservice.rounds)|false|none|none|
|»»»» ID|string(uuid)|false|none|none|
|»»»» createdAt|string(date-time)¦null|false|none|none|
|»»»» createdBy|string¦null|false|none|{i18n>UserID.Description}|
|»»»» modifiedAt|string(date-time)¦null|false|none|none|
|»»»» modifiedBy|string¦null|false|none|{i18n>UserID.Description}|
|»»»» title|string¦null|false|none|none|
|»»»» holes|[[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)]|false|none|none|
|»»»»» Rounds_holes|[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)|false|none|none|
|»»»» holes@odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|»»» up__ID|string(uuid)|false|none|none|
|»»» ID|string(uuid)|false|none|none|
|»»» holeNumber|integer(int32)¦null|false|none|none|
|»»» shots|[[CatalogService.Rounds_holes_shots](#schemacatalogservice.rounds_holes_shots)]|false|none|none|
|»»»» Rounds_holes_shots|[CatalogService.Rounds_holes_shots](#schemacatalogservice.rounds_holes_shots)|false|none|none|
|»»»»» up_|[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)|false|none|none|
|»»»»» up__up__ID|string(uuid)|false|none|none|
|»»»»» up__ID|string(uuid)|false|none|none|
|»»»»» ID|string(uuid)|false|none|none|
|»»»»» quality|[CatalogService.Quality](#schemacatalogservice.quality)¦null|false|none|none|
|»»»»»» name|string¦null|false|none|none|
|»»»»»» descr|string¦null|false|none|none|
|»»»»»» code|string|false|none|none|
|»»»»»» texts|[[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)]|false|none|none|
|»»»»»»» Quality_texts|[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)|false|none|none|
|»»»»»»»» locale|string|false|none|none|
|»»»»»»»» name|string¦null|false|none|none|
|»»»»»»»» descr|string¦null|false|none|none|
|»»»»»»»» code|string|false|none|none|
|»»»»»» texts@odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|»»»»»» localized|[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)¦null|false|none|none|
|»»»»»»» locale|string|false|none|none|
|»»»»»»» name|string¦null|false|none|none|
|»»»»»»» descr|string¦null|false|none|none|
|»»»»»»» code|string|false|none|none|
|»»»»» quality_code|string¦null|false|none|none|
|»»»»» distance|integer(int32)¦null|false|none|none|
|»»» shots@odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|»»» par|integer(int32)¦null|false|none|none|
|»»» score|integer(int32)¦null|false|none|none|
|»»» result|[CatalogService.Result](#schemacatalogservice.result)¦null|false|none|none|
|»»»» name|string¦null|false|none|none|
|»»»» descr|string¦null|false|none|none|
|»»»» code|integer(int32)|false|none|none|
|»»»» texts|[[CatalogService.Result_texts](#schemacatalogservice.result_texts)]|false|none|none|
|»»»»» Result_texts|[CatalogService.Result_texts](#schemacatalogservice.result_texts)|false|none|none|
|»»»»»» locale|string|false|none|none|
|»»»»»» name|string¦null|false|none|none|
|»»»»»» descr|string¦null|false|none|none|
|»»»»»» code|integer(int32)|false|none|none|
|»»»» texts@odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|»»»» localized|[CatalogService.Result_texts](#schemacatalogservice.result_texts)¦null|false|none|none|
|»»»»» locale|string|false|none|none|
|»»»»» name|string¦null|false|none|none|
|»»»»» descr|string¦null|false|none|none|
|»»»»» code|integer(int32)|false|none|none|
|»»» result_code|integer(int32)¦null|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## Create a single rounds_hole.

> Code samples

```shell
# You can also use wget
curl -X POST /browse/Rounds_holes \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST /browse/Rounds_holes HTTP/1.1

Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "holeNumber": 0,
  "par": 0,
  "result_code": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/browse/Rounds_holes',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post '/browse/Rounds_holes',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('/browse/Rounds_holes', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/browse/Rounds_holes', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Rounds_holes");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/browse/Rounds_holes", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /Rounds_holes`

> Body parameter

```json
{
  "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "holeNumber": 0,
  "par": 0,
  "result_code": 0
}
```

<h3 id="create-a-single-rounds_hole.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CatalogService.Rounds_holes-create](#schemacatalogservice.rounds_holes-create)|true|New rounds_hole|

> Example responses

> 201 Response

```json
{
  "up_": {
    "ID": "01234567-89ab-cdef-0123-456789abcdef",
    "createdAt": "2017-04-13T15:51:04.0000000Z",
    "createdBy": "string",
    "modifiedAt": "2017-04-13T15:51:04.0000000Z",
    "modifiedBy": "string",
    "title": "string",
    "holes": [
      {
        "up_": {},
        "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
        "ID": "01234567-89ab-cdef-0123-456789abcdef",
        "holeNumber": 0,
        "shots": [
          {
            "up_": {},
            "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
            "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
            "ID": "01234567-89ab-cdef-0123-456789abcdef",
            "quality": {
              "name": "string",
              "descr": "string",
              "code": "string",
              "texts": [
                {
                  "locale": "string",
                  "name": "string",
                  "descr": "string",
                  "code": "string"
                }
              ],
              "texts@odata.count": 0,
              "localized": {
                "locale": "string",
                "name": "string",
                "descr": "string",
                "code": "string"
              }
            },
            "quality_code": "string",
            "distance": 0
          }
        ],
        "shots@odata.count": 0,
        "par": 0,
        "score": 0,
        "result": {
          "name": "string",
          "descr": "string",
          "code": 0,
          "texts": [
            {
              "locale": "string",
              "name": "string",
              "descr": "string",
              "code": 0
            }
          ],
          "texts@odata.count": 0,
          "localized": {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": 0
          }
        },
        "result_code": 0
      }
    ],
    "holes@odata.count": 0
  },
  "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "holeNumber": 0,
  "shots": [
    {
      "up_": {
        "up_": {
          "ID": "01234567-89ab-cdef-0123-456789abcdef",
          "createdAt": "2017-04-13T15:51:04.0000000Z",
          "createdBy": "string",
          "modifiedAt": "2017-04-13T15:51:04.0000000Z",
          "modifiedBy": "string",
          "title": "string",
          "holes": [
            {}
          ],
          "holes@odata.count": 0
        },
        "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
        "ID": "01234567-89ab-cdef-0123-456789abcdef",
        "holeNumber": 0,
        "shots": [],
        "shots@odata.count": 0,
        "par": 0,
        "score": 0,
        "result": {
          "name": "string",
          "descr": "string",
          "code": 0,
          "texts": [
            {
              "locale": "string",
              "name": "string",
              "descr": "string",
              "code": 0
            }
          ],
          "texts@odata.count": 0,
          "localized": {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": 0
          }
        },
        "result_code": 0
      },
      "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
      "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
      "ID": "01234567-89ab-cdef-0123-456789abcdef",
      "quality": {
        "name": "string",
        "descr": "string",
        "code": "string",
        "texts": [
          {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": "string"
          }
        ],
        "texts@odata.count": 0,
        "localized": {
          "locale": "string",
          "name": "string",
          "descr": "string",
          "code": "string"
        }
      },
      "quality_code": "string",
      "distance": 0
    }
  ],
  "shots@odata.count": 0,
  "par": 0,
  "score": 0,
  "result": {
    "name": "string",
    "descr": "string",
    "code": 0,
    "texts": [
      {
        "locale": "string",
        "name": "string",
        "descr": "string",
        "code": 0
      }
    ],
    "texts@odata.count": 0,
    "localized": {
      "locale": "string",
      "name": "string",
      "descr": "string",
      "code": 0
    }
  },
  "result_code": 0
}
```

<h3 id="create-a-single-rounds_hole.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created rounds_hole|[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Retrieve a single rounds_hole.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Rounds_holes(up__ID={up__ID},ID={ID}) \
  -H 'Accept: application/json'

```

```http
GET /browse/Rounds_holes(up__ID={up__ID},ID={ID}) HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Rounds_holes(up__ID={up__ID},ID={ID})',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Rounds_holes(up__ID={up__ID},ID={ID})',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Rounds_holes(up__ID={up__ID},ID={ID})', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Rounds_holes(up__ID={up__ID},ID={ID})', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Rounds_holes(up__ID={up__ID},ID={ID})");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Rounds_holes(up__ID={up__ID},ID={ID})", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Rounds_holes(up__ID={up__ID},ID={ID})`

<h3 id="retrieve-a-single-rounds_hole.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|
|$expand|query|array[string]|false|The value of $expand query option is a comma-separated list of navigation property names, stream property names, or $value indicating the stream content of a media-entity. The corresponding related entities and stream values will be represented inline, see [Expand](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionexpand)|
|up__ID|path|string(uuid)|true|key: up__ID|
|ID|path|string(uuid)|true|key: ID|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$select|up__ID|
|$select|ID|
|$select|holeNumber|
|$select|par|
|$select|score|
|$select|result_code|
|$expand|*|
|$expand|up_|
|$expand|shots|
|$expand|result|

> Example responses

> 200 Response

```json
{
  "up_": {
    "ID": "01234567-89ab-cdef-0123-456789abcdef",
    "createdAt": "2017-04-13T15:51:04.0000000Z",
    "createdBy": "string",
    "modifiedAt": "2017-04-13T15:51:04.0000000Z",
    "modifiedBy": "string",
    "title": "string",
    "holes": [
      {
        "up_": {},
        "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
        "ID": "01234567-89ab-cdef-0123-456789abcdef",
        "holeNumber": 0,
        "shots": [
          {
            "up_": {},
            "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
            "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
            "ID": "01234567-89ab-cdef-0123-456789abcdef",
            "quality": {
              "name": "string",
              "descr": "string",
              "code": "string",
              "texts": [
                {
                  "locale": "string",
                  "name": "string",
                  "descr": "string",
                  "code": "string"
                }
              ],
              "texts@odata.count": 0,
              "localized": {
                "locale": "string",
                "name": "string",
                "descr": "string",
                "code": "string"
              }
            },
            "quality_code": "string",
            "distance": 0
          }
        ],
        "shots@odata.count": 0,
        "par": 0,
        "score": 0,
        "result": {
          "name": "string",
          "descr": "string",
          "code": 0,
          "texts": [
            {
              "locale": "string",
              "name": "string",
              "descr": "string",
              "code": 0
            }
          ],
          "texts@odata.count": 0,
          "localized": {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": 0
          }
        },
        "result_code": 0
      }
    ],
    "holes@odata.count": 0
  },
  "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "holeNumber": 0,
  "shots": [
    {
      "up_": {
        "up_": {
          "ID": "01234567-89ab-cdef-0123-456789abcdef",
          "createdAt": "2017-04-13T15:51:04.0000000Z",
          "createdBy": "string",
          "modifiedAt": "2017-04-13T15:51:04.0000000Z",
          "modifiedBy": "string",
          "title": "string",
          "holes": [
            {}
          ],
          "holes@odata.count": 0
        },
        "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
        "ID": "01234567-89ab-cdef-0123-456789abcdef",
        "holeNumber": 0,
        "shots": [],
        "shots@odata.count": 0,
        "par": 0,
        "score": 0,
        "result": {
          "name": "string",
          "descr": "string",
          "code": 0,
          "texts": [
            {
              "locale": "string",
              "name": "string",
              "descr": "string",
              "code": 0
            }
          ],
          "texts@odata.count": 0,
          "localized": {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": 0
          }
        },
        "result_code": 0
      },
      "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
      "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
      "ID": "01234567-89ab-cdef-0123-456789abcdef",
      "quality": {
        "name": "string",
        "descr": "string",
        "code": "string",
        "texts": [
          {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": "string"
          }
        ],
        "texts@odata.count": 0,
        "localized": {
          "locale": "string",
          "name": "string",
          "descr": "string",
          "code": "string"
        }
      },
      "quality_code": "string",
      "distance": 0
    }
  ],
  "shots@odata.count": 0,
  "par": 0,
  "score": 0,
  "result": {
    "name": "string",
    "descr": "string",
    "code": 0,
    "texts": [
      {
        "locale": "string",
        "name": "string",
        "descr": "string",
        "code": 0
      }
    ],
    "texts@odata.count": 0,
    "localized": {
      "locale": "string",
      "name": "string",
      "descr": "string",
      "code": 0
    }
  },
  "result_code": 0
}
```

<h3 id="retrieve-a-single-rounds_hole.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved rounds_hole|[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Change a single rounds_hole.

> Code samples

```shell
# You can also use wget
curl -X PATCH /browse/Rounds_holes(up__ID={up__ID},ID={ID}) \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
PATCH /browse/Rounds_holes(up__ID={up__ID},ID={ID}) HTTP/1.1

Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "holeNumber": 0,
  "par": 0,
  "result_code": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/browse/Rounds_holes(up__ID={up__ID},ID={ID})',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.patch '/browse/Rounds_holes(up__ID={up__ID},ID={ID})',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.patch('/browse/Rounds_holes(up__ID={up__ID},ID={ID})', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','/browse/Rounds_holes(up__ID={up__ID},ID={ID})', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Rounds_holes(up__ID={up__ID},ID={ID})");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "/browse/Rounds_holes(up__ID={up__ID},ID={ID})", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /Rounds_holes(up__ID={up__ID},ID={ID})`

> Body parameter

```json
{
  "holeNumber": 0,
  "par": 0,
  "result_code": 0
}
```

<h3 id="change-a-single-rounds_hole.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CatalogService.Rounds_holes-update](#schemacatalogservice.rounds_holes-update)|true|New property values|
|up__ID|path|string(uuid)|true|key: up__ID|
|ID|path|string(uuid)|true|key: ID|

> Example responses

> 4XX Response

```json
{
  "error": {
    "code": "string",
    "message": "string",
    "target": "string",
    "details": [
      {
        "code": "string",
        "message": "string",
        "target": "string"
      }
    ],
    "innererror": {}
  }
}
```

<h3 id="change-a-single-rounds_hole.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Success|None|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Delete a single rounds_hole.

> Code samples

```shell
# You can also use wget
curl -X DELETE /browse/Rounds_holes(up__ID={up__ID},ID={ID}) \
  -H 'Accept: application/json'

```

```http
DELETE /browse/Rounds_holes(up__ID={up__ID},ID={ID}) HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Rounds_holes(up__ID={up__ID},ID={ID})',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.delete '/browse/Rounds_holes(up__ID={up__ID},ID={ID})',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.delete('/browse/Rounds_holes(up__ID={up__ID},ID={ID})', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','/browse/Rounds_holes(up__ID={up__ID},ID={ID})', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Rounds_holes(up__ID={up__ID},ID={ID})");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "/browse/Rounds_holes(up__ID={up__ID},ID={ID})", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /Rounds_holes(up__ID={up__ID},ID={ID})`

<h3 id="delete-a-single-rounds_hole.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|up__ID|path|string(uuid)|true|key: up__ID|
|ID|path|string(uuid)|true|key: ID|

> Example responses

> 4XX Response

```json
{
  "error": {
    "code": "string",
    "message": "string",
    "target": "string",
    "details": [
      {
        "code": "string",
        "message": "string",
        "target": "string"
      }
    ],
    "innererror": {}
  }
}
```

<h3 id="delete-a-single-rounds_hole.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Success|None|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Retrieve result of a rounds_hole.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Rounds_holes(up__ID={up__ID},ID={ID})/result \
  -H 'Accept: application/json'

```

```http
GET /browse/Rounds_holes(up__ID={up__ID},ID={ID})/result HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Rounds_holes(up__ID={up__ID},ID={ID})/result',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Rounds_holes(up__ID={up__ID},ID={ID})/result',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Rounds_holes(up__ID={up__ID},ID={ID})/result', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Rounds_holes(up__ID={up__ID},ID={ID})/result', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Rounds_holes(up__ID={up__ID},ID={ID})/result");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Rounds_holes(up__ID={up__ID},ID={ID})/result", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Rounds_holes(up__ID={up__ID},ID={ID})/result`

<h3 id="retrieve-result-of-a-rounds_hole.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|
|$expand|query|array[string]|false|The value of $expand query option is a comma-separated list of navigation property names, stream property names, or $value indicating the stream content of a media-entity. The corresponding related entities and stream values will be represented inline, see [Expand](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionexpand)|
|up__ID|path|string(uuid)|true|key: up__ID|
|ID|path|string(uuid)|true|key: ID|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$select|name|
|$select|descr|
|$select|code|
|$expand|*|
|$expand|texts|
|$expand|localized|

> Example responses

> 200 Response

```json
{
  "name": "string",
  "descr": "string",
  "code": 0,
  "texts": [
    {
      "locale": "string",
      "name": "string",
      "descr": "string",
      "code": 0
    }
  ],
  "texts@odata.count": 0,
  "localized": {
    "locale": "string",
    "name": "string",
    "descr": "string",
    "code": 0
  }
}
```

<h3 id="retrieve-result-of-a-rounds_hole.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved result|[CatalogService.Result](#schemacatalogservice.result)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Retrieve a list of shots of a rounds_hole.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Rounds_holes(up__ID={up__ID},ID={ID})/shots \
  -H 'Accept: application/json'

```

```http
GET /browse/Rounds_holes(up__ID={up__ID},ID={ID})/shots HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Rounds_holes(up__ID={up__ID},ID={ID})/shots',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Rounds_holes(up__ID={up__ID},ID={ID})/shots',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Rounds_holes(up__ID={up__ID},ID={ID})/shots', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Rounds_holes(up__ID={up__ID},ID={ID})/shots', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Rounds_holes(up__ID={up__ID},ID={ID})/shots");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Rounds_holes(up__ID={up__ID},ID={ID})/shots", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Rounds_holes(up__ID={up__ID},ID={ID})/shots`

<h3 id="retrieve-a-list-of-shots-of-a-rounds_hole.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$top|query|integer|false|Show only the first n items, see [Paging - Top](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptiontop)|
|$skip|query|integer|false|Skip the first n items, see [Paging - Skip](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionskip)|
|$search|query|string|false|Search items by search phrases, see [Searching](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionsearch)|
|$filter|query|string|false|Filter items by property values, see [Filtering](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionfilter)|
|$count|query|boolean|false|Include count of items, see [Count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount)|
|$orderby|query|array[string]|false|Order items by property values, see [Sorting](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionorderby)|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|
|$expand|query|array[string]|false|The value of $expand query option is a comma-separated list of navigation property names, stream property names, or $value indicating the stream content of a media-entity. The corresponding related entities and stream values will be represented inline, see [Expand](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionexpand)|
|up__ID|path|string(uuid)|true|key: up__ID|
|ID|path|string(uuid)|true|key: ID|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$orderby|up__up__ID|
|$orderby|up__up__ID desc|
|$orderby|up__ID|
|$orderby|up__ID desc|
|$orderby|ID|
|$orderby|ID desc|
|$orderby|quality_code|
|$orderby|quality_code desc|
|$orderby|distance|
|$orderby|distance desc|
|$select|up__up__ID|
|$select|up__ID|
|$select|ID|
|$select|quality_code|
|$select|distance|
|$expand|*|
|$expand|up_|
|$expand|quality|

> Example responses

> 200 Response

```json
{
  "@odata.count": 0,
  "value": [
    {
      "up_": {
        "up_": {
          "ID": "01234567-89ab-cdef-0123-456789abcdef",
          "createdAt": "2017-04-13T15:51:04.0000000Z",
          "createdBy": "string",
          "modifiedAt": "2017-04-13T15:51:04.0000000Z",
          "modifiedBy": "string",
          "title": "string",
          "holes": [
            {}
          ],
          "holes@odata.count": 0
        },
        "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
        "ID": "01234567-89ab-cdef-0123-456789abcdef",
        "holeNumber": 0,
        "shots": [
          {}
        ],
        "shots@odata.count": 0,
        "par": 0,
        "score": 0,
        "result": {
          "name": "string",
          "descr": "string",
          "code": 0,
          "texts": [
            {
              "locale": "string",
              "name": "string",
              "descr": "string",
              "code": 0
            }
          ],
          "texts@odata.count": 0,
          "localized": {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": 0
          }
        },
        "result_code": 0
      },
      "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
      "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
      "ID": "01234567-89ab-cdef-0123-456789abcdef",
      "quality": {
        "name": "string",
        "descr": "string",
        "code": "string",
        "texts": [
          {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": "string"
          }
        ],
        "texts@odata.count": 0,
        "localized": {
          "locale": "string",
          "name": "string",
          "descr": "string",
          "code": "string"
        }
      },
      "quality_code": "string",
      "distance": 0
    }
  ]
}
```

<h3 id="retrieve-a-list-of-shots-of-a-rounds_hole.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved shots|Inline|
|4XX|Unknown|Error|[error](#schemaerror)|

<h3 id="retrieve-a-list-of-shots-of-a-rounds_hole.-responseschema">Response Schema</h3>

Status Code **200**

*Collection of Rounds_holes_shots*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» @odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|

*anyOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|number|false|none|none|

*or*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|string|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» value|[[CatalogService.Rounds_holes_shots](#schemacatalogservice.rounds_holes_shots)]|false|none|none|
|»» Rounds_holes_shots|[CatalogService.Rounds_holes_shots](#schemacatalogservice.rounds_holes_shots)|false|none|none|
|»»» up_|[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)|false|none|none|
|»»»» up_|[CatalogService.Rounds](#schemacatalogservice.rounds)|false|none|none|
|»»»»» ID|string(uuid)|false|none|none|
|»»»»» createdAt|string(date-time)¦null|false|none|none|
|»»»»» createdBy|string¦null|false|none|{i18n>UserID.Description}|
|»»»»» modifiedAt|string(date-time)¦null|false|none|none|
|»»»»» modifiedBy|string¦null|false|none|{i18n>UserID.Description}|
|»»»»» title|string¦null|false|none|none|
|»»»»» holes|[[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)]|false|none|none|
|»»»»»» Rounds_holes|[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)|false|none|none|
|»»»»» holes@odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|»»»» up__ID|string(uuid)|false|none|none|
|»»»» ID|string(uuid)|false|none|none|
|»»»» holeNumber|integer(int32)¦null|false|none|none|
|»»»» shots|[[CatalogService.Rounds_holes_shots](#schemacatalogservice.rounds_holes_shots)]|false|none|none|
|»»»»» Rounds_holes_shots|[CatalogService.Rounds_holes_shots](#schemacatalogservice.rounds_holes_shots)|false|none|none|
|»»»» shots@odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|»»»» par|integer(int32)¦null|false|none|none|
|»»»» score|integer(int32)¦null|false|none|none|
|»»»» result|[CatalogService.Result](#schemacatalogservice.result)¦null|false|none|none|
|»»»»» name|string¦null|false|none|none|
|»»»»» descr|string¦null|false|none|none|
|»»»»» code|integer(int32)|false|none|none|
|»»»»» texts|[[CatalogService.Result_texts](#schemacatalogservice.result_texts)]|false|none|none|
|»»»»»» Result_texts|[CatalogService.Result_texts](#schemacatalogservice.result_texts)|false|none|none|
|»»»»»»» locale|string|false|none|none|
|»»»»»»» name|string¦null|false|none|none|
|»»»»»»» descr|string¦null|false|none|none|
|»»»»»»» code|integer(int32)|false|none|none|
|»»»»» texts@odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|»»»»» localized|[CatalogService.Result_texts](#schemacatalogservice.result_texts)¦null|false|none|none|
|»»»»»» locale|string|false|none|none|
|»»»»»» name|string¦null|false|none|none|
|»»»»»» descr|string¦null|false|none|none|
|»»»»»» code|integer(int32)|false|none|none|
|»»»» result_code|integer(int32)¦null|false|none|none|
|»»» up__up__ID|string(uuid)|false|none|none|
|»»» up__ID|string(uuid)|false|none|none|
|»»» ID|string(uuid)|false|none|none|
|»»» quality|[CatalogService.Quality](#schemacatalogservice.quality)¦null|false|none|none|
|»»»» name|string¦null|false|none|none|
|»»»» descr|string¦null|false|none|none|
|»»»» code|string|false|none|none|
|»»»» texts|[[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)]|false|none|none|
|»»»»» Quality_texts|[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)|false|none|none|
|»»»»»» locale|string|false|none|none|
|»»»»»» name|string¦null|false|none|none|
|»»»»»» descr|string¦null|false|none|none|
|»»»»»» code|string|false|none|none|
|»»»» texts@odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|»»»» localized|[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)¦null|false|none|none|
|»»»»» locale|string|false|none|none|
|»»»»» name|string¦null|false|none|none|
|»»»»» descr|string¦null|false|none|none|
|»»»»» code|string|false|none|none|
|»»» quality_code|string¦null|false|none|none|
|»»» distance|integer(int32)¦null|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## Create a single shot of a rounds_hole.

> Code samples

```shell
# You can also use wget
curl -X POST /browse/Rounds_holes(up__ID={up__ID},ID={ID})/shots \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST /browse/Rounds_holes(up__ID={up__ID},ID={ID})/shots HTTP/1.1

Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "quality_code": "string",
  "distance": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/browse/Rounds_holes(up__ID={up__ID},ID={ID})/shots',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post '/browse/Rounds_holes(up__ID={up__ID},ID={ID})/shots',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('/browse/Rounds_holes(up__ID={up__ID},ID={ID})/shots', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/browse/Rounds_holes(up__ID={up__ID},ID={ID})/shots', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Rounds_holes(up__ID={up__ID},ID={ID})/shots");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/browse/Rounds_holes(up__ID={up__ID},ID={ID})/shots", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /Rounds_holes(up__ID={up__ID},ID={ID})/shots`

> Body parameter

```json
{
  "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "quality_code": "string",
  "distance": 0
}
```

<h3 id="create-a-single-shot-of-a-rounds_hole.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CatalogService.Rounds_holes_shots-create](#schemacatalogservice.rounds_holes_shots-create)|true|New shot|
|up__ID|path|string(uuid)|true|key: up__ID|
|ID|path|string(uuid)|true|key: ID|

> Example responses

> 201 Response

```json
{
  "up_": {
    "up_": {
      "ID": "01234567-89ab-cdef-0123-456789abcdef",
      "createdAt": "2017-04-13T15:51:04.0000000Z",
      "createdBy": "string",
      "modifiedAt": "2017-04-13T15:51:04.0000000Z",
      "modifiedBy": "string",
      "title": "string",
      "holes": [
        {}
      ],
      "holes@odata.count": 0
    },
    "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
    "ID": "01234567-89ab-cdef-0123-456789abcdef",
    "holeNumber": 0,
    "shots": [
      {
        "up_": {},
        "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
        "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
        "ID": "01234567-89ab-cdef-0123-456789abcdef",
        "quality": {
          "name": "string",
          "descr": "string",
          "code": "string",
          "texts": [
            {
              "locale": "string",
              "name": "string",
              "descr": "string",
              "code": "string"
            }
          ],
          "texts@odata.count": 0,
          "localized": {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": "string"
          }
        },
        "quality_code": "string",
        "distance": 0
      }
    ],
    "shots@odata.count": 0,
    "par": 0,
    "score": 0,
    "result": {
      "name": "string",
      "descr": "string",
      "code": 0,
      "texts": [
        {
          "locale": "string",
          "name": "string",
          "descr": "string",
          "code": 0
        }
      ],
      "texts@odata.count": 0,
      "localized": {
        "locale": "string",
        "name": "string",
        "descr": "string",
        "code": 0
      }
    },
    "result_code": 0
  },
  "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "quality": {
    "name": "string",
    "descr": "string",
    "code": "string",
    "texts": [
      {
        "locale": "string",
        "name": "string",
        "descr": "string",
        "code": "string"
      }
    ],
    "texts@odata.count": 0,
    "localized": {
      "locale": "string",
      "name": "string",
      "descr": "string",
      "code": "string"
    }
  },
  "quality_code": "string",
  "distance": 0
}
```

<h3 id="create-a-single-shot-of-a-rounds_hole.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created shot|[CatalogService.Rounds_holes_shots](#schemacatalogservice.rounds_holes_shots)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Retrieve up_ of a rounds_hole.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Rounds_holes(up__ID={up__ID},ID={ID})/up_ \
  -H 'Accept: application/json'

```

```http
GET /browse/Rounds_holes(up__ID={up__ID},ID={ID})/up_ HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Rounds_holes(up__ID={up__ID},ID={ID})/up_',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Rounds_holes(up__ID={up__ID},ID={ID})/up_',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Rounds_holes(up__ID={up__ID},ID={ID})/up_', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Rounds_holes(up__ID={up__ID},ID={ID})/up_', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Rounds_holes(up__ID={up__ID},ID={ID})/up_");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Rounds_holes(up__ID={up__ID},ID={ID})/up_", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Rounds_holes(up__ID={up__ID},ID={ID})/up_`

<h3 id="retrieve-up_-of-a-rounds_hole.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|
|$expand|query|array[string]|false|The value of $expand query option is a comma-separated list of navigation property names, stream property names, or $value indicating the stream content of a media-entity. The corresponding related entities and stream values will be represented inline, see [Expand](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionexpand)|
|up__ID|path|string(uuid)|true|key: up__ID|
|ID|path|string(uuid)|true|key: ID|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$select|ID|
|$select|createdAt|
|$select|createdBy|
|$select|modifiedAt|
|$select|modifiedBy|
|$select|title|
|$expand|*|
|$expand|holes|

> Example responses

> 200 Response

```json
{
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "createdAt": "2017-04-13T15:51:04.0000000Z",
  "createdBy": "string",
  "modifiedAt": "2017-04-13T15:51:04.0000000Z",
  "modifiedBy": "string",
  "title": "string",
  "holes": [
    {
      "up_": {
        "ID": "01234567-89ab-cdef-0123-456789abcdef",
        "createdAt": "2017-04-13T15:51:04.0000000Z",
        "createdBy": "string",
        "modifiedAt": "2017-04-13T15:51:04.0000000Z",
        "modifiedBy": "string",
        "title": "string",
        "holes": [],
        "holes@odata.count": 0
      },
      "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
      "ID": "01234567-89ab-cdef-0123-456789abcdef",
      "holeNumber": 0,
      "shots": [
        {
          "up_": {},
          "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
          "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
          "ID": "01234567-89ab-cdef-0123-456789abcdef",
          "quality": {
            "name": "string",
            "descr": "string",
            "code": "string",
            "texts": [
              {
                "locale": "string",
                "name": "string",
                "descr": "string",
                "code": "string"
              }
            ],
            "texts@odata.count": 0,
            "localized": {
              "locale": "string",
              "name": "string",
              "descr": "string",
              "code": "string"
            }
          },
          "quality_code": "string",
          "distance": 0
        }
      ],
      "shots@odata.count": 0,
      "par": 0,
      "score": 0,
      "result": {
        "name": "string",
        "descr": "string",
        "code": 0,
        "texts": [
          {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": 0
          }
        ],
        "texts@odata.count": 0,
        "localized": {
          "locale": "string",
          "name": "string",
          "descr": "string",
          "code": 0
        }
      },
      "result_code": 0
    }
  ],
  "holes@odata.count": 0
}
```

<h3 id="retrieve-up_-of-a-rounds_hole.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved up_|[CatalogService.Rounds](#schemacatalogservice.rounds)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="-rounds_holes_shots">Rounds_holes_shots</h1>

## Retrieve a list of rounds_holes_shots.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Rounds_holes_shots \
  -H 'Accept: application/json'

```

```http
GET /browse/Rounds_holes_shots HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Rounds_holes_shots',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Rounds_holes_shots',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Rounds_holes_shots', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Rounds_holes_shots', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Rounds_holes_shots");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Rounds_holes_shots", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Rounds_holes_shots`

<h3 id="retrieve-a-list-of-rounds_holes_shots.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$top|query|integer|false|Show only the first n items, see [Paging - Top](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptiontop)|
|$skip|query|integer|false|Skip the first n items, see [Paging - Skip](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionskip)|
|$search|query|string|false|Search items by search phrases, see [Searching](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionsearch)|
|$filter|query|string|false|Filter items by property values, see [Filtering](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionfilter)|
|$count|query|boolean|false|Include count of items, see [Count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount)|
|$orderby|query|array[string]|false|Order items by property values, see [Sorting](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionorderby)|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|
|$expand|query|array[string]|false|The value of $expand query option is a comma-separated list of navigation property names, stream property names, or $value indicating the stream content of a media-entity. The corresponding related entities and stream values will be represented inline, see [Expand](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionexpand)|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$orderby|up__up__ID|
|$orderby|up__up__ID desc|
|$orderby|up__ID|
|$orderby|up__ID desc|
|$orderby|ID|
|$orderby|ID desc|
|$orderby|quality_code|
|$orderby|quality_code desc|
|$orderby|distance|
|$orderby|distance desc|
|$select|up__up__ID|
|$select|up__ID|
|$select|ID|
|$select|quality_code|
|$select|distance|
|$expand|*|
|$expand|up_|
|$expand|quality|

> Example responses

> 200 Response

```json
{
  "@odata.count": 0,
  "value": [
    {
      "up_": {
        "up_": {
          "ID": "01234567-89ab-cdef-0123-456789abcdef",
          "createdAt": "2017-04-13T15:51:04.0000000Z",
          "createdBy": "string",
          "modifiedAt": "2017-04-13T15:51:04.0000000Z",
          "modifiedBy": "string",
          "title": "string",
          "holes": [
            {}
          ],
          "holes@odata.count": 0
        },
        "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
        "ID": "01234567-89ab-cdef-0123-456789abcdef",
        "holeNumber": 0,
        "shots": [
          {}
        ],
        "shots@odata.count": 0,
        "par": 0,
        "score": 0,
        "result": {
          "name": "string",
          "descr": "string",
          "code": 0,
          "texts": [
            {
              "locale": "string",
              "name": "string",
              "descr": "string",
              "code": 0
            }
          ],
          "texts@odata.count": 0,
          "localized": {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": 0
          }
        },
        "result_code": 0
      },
      "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
      "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
      "ID": "01234567-89ab-cdef-0123-456789abcdef",
      "quality": {
        "name": "string",
        "descr": "string",
        "code": "string",
        "texts": [
          {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": "string"
          }
        ],
        "texts@odata.count": 0,
        "localized": {
          "locale": "string",
          "name": "string",
          "descr": "string",
          "code": "string"
        }
      },
      "quality_code": "string",
      "distance": 0
    }
  ]
}
```

<h3 id="retrieve-a-list-of-rounds_holes_shots.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved rounds_holes_shots|Inline|
|4XX|Unknown|Error|[error](#schemaerror)|

<h3 id="retrieve-a-list-of-rounds_holes_shots.-responseschema">Response Schema</h3>

Status Code **200**

*Collection of Rounds_holes_shots*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» @odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|

*anyOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|number|false|none|none|

*or*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|string|false|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» value|[[CatalogService.Rounds_holes_shots](#schemacatalogservice.rounds_holes_shots)]|false|none|none|
|»» Rounds_holes_shots|[CatalogService.Rounds_holes_shots](#schemacatalogservice.rounds_holes_shots)|false|none|none|
|»»» up_|[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)|false|none|none|
|»»»» up_|[CatalogService.Rounds](#schemacatalogservice.rounds)|false|none|none|
|»»»»» ID|string(uuid)|false|none|none|
|»»»»» createdAt|string(date-time)¦null|false|none|none|
|»»»»» createdBy|string¦null|false|none|{i18n>UserID.Description}|
|»»»»» modifiedAt|string(date-time)¦null|false|none|none|
|»»»»» modifiedBy|string¦null|false|none|{i18n>UserID.Description}|
|»»»»» title|string¦null|false|none|none|
|»»»»» holes|[[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)]|false|none|none|
|»»»»»» Rounds_holes|[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)|false|none|none|
|»»»»» holes@odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|»»»» up__ID|string(uuid)|false|none|none|
|»»»» ID|string(uuid)|false|none|none|
|»»»» holeNumber|integer(int32)¦null|false|none|none|
|»»»» shots|[[CatalogService.Rounds_holes_shots](#schemacatalogservice.rounds_holes_shots)]|false|none|none|
|»»»»» Rounds_holes_shots|[CatalogService.Rounds_holes_shots](#schemacatalogservice.rounds_holes_shots)|false|none|none|
|»»»» shots@odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|»»»» par|integer(int32)¦null|false|none|none|
|»»»» score|integer(int32)¦null|false|none|none|
|»»»» result|[CatalogService.Result](#schemacatalogservice.result)¦null|false|none|none|
|»»»»» name|string¦null|false|none|none|
|»»»»» descr|string¦null|false|none|none|
|»»»»» code|integer(int32)|false|none|none|
|»»»»» texts|[[CatalogService.Result_texts](#schemacatalogservice.result_texts)]|false|none|none|
|»»»»»» Result_texts|[CatalogService.Result_texts](#schemacatalogservice.result_texts)|false|none|none|
|»»»»»»» locale|string|false|none|none|
|»»»»»»» name|string¦null|false|none|none|
|»»»»»»» descr|string¦null|false|none|none|
|»»»»»»» code|integer(int32)|false|none|none|
|»»»»» texts@odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|»»»»» localized|[CatalogService.Result_texts](#schemacatalogservice.result_texts)¦null|false|none|none|
|»»»»»» locale|string|false|none|none|
|»»»»»» name|string¦null|false|none|none|
|»»»»»» descr|string¦null|false|none|none|
|»»»»»» code|integer(int32)|false|none|none|
|»»»» result_code|integer(int32)¦null|false|none|none|
|»»» up__up__ID|string(uuid)|false|none|none|
|»»» up__ID|string(uuid)|false|none|none|
|»»» ID|string(uuid)|false|none|none|
|»»» quality|[CatalogService.Quality](#schemacatalogservice.quality)¦null|false|none|none|
|»»»» name|string¦null|false|none|none|
|»»»» descr|string¦null|false|none|none|
|»»»» code|string|false|none|none|
|»»»» texts|[[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)]|false|none|none|
|»»»»» Quality_texts|[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)|false|none|none|
|»»»»»» locale|string|false|none|none|
|»»»»»» name|string¦null|false|none|none|
|»»»»»» descr|string¦null|false|none|none|
|»»»»»» code|string|false|none|none|
|»»»» texts@odata.count|any|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|»»»» localized|[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)¦null|false|none|none|
|»»»»» locale|string|false|none|none|
|»»»»» name|string¦null|false|none|none|
|»»»»» descr|string¦null|false|none|none|
|»»»»» code|string|false|none|none|
|»»» quality_code|string¦null|false|none|none|
|»»» distance|integer(int32)¦null|false|none|none|

<aside class="success">
This operation does not require authentication
</aside>

## Create a single rounds_holes_shot.

> Code samples

```shell
# You can also use wget
curl -X POST /browse/Rounds_holes_shots \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
POST /browse/Rounds_holes_shots HTTP/1.1

Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "quality_code": "string",
  "distance": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/browse/Rounds_holes_shots',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.post '/browse/Rounds_holes_shots',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.post('/browse/Rounds_holes_shots', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/browse/Rounds_holes_shots', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Rounds_holes_shots");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/browse/Rounds_holes_shots", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /Rounds_holes_shots`

> Body parameter

```json
{
  "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "quality_code": "string",
  "distance": 0
}
```

<h3 id="create-a-single-rounds_holes_shot.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CatalogService.Rounds_holes_shots-create](#schemacatalogservice.rounds_holes_shots-create)|true|New rounds_holes_shot|

> Example responses

> 201 Response

```json
{
  "up_": {
    "up_": {
      "ID": "01234567-89ab-cdef-0123-456789abcdef",
      "createdAt": "2017-04-13T15:51:04.0000000Z",
      "createdBy": "string",
      "modifiedAt": "2017-04-13T15:51:04.0000000Z",
      "modifiedBy": "string",
      "title": "string",
      "holes": [
        {}
      ],
      "holes@odata.count": 0
    },
    "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
    "ID": "01234567-89ab-cdef-0123-456789abcdef",
    "holeNumber": 0,
    "shots": [
      {
        "up_": {},
        "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
        "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
        "ID": "01234567-89ab-cdef-0123-456789abcdef",
        "quality": {
          "name": "string",
          "descr": "string",
          "code": "string",
          "texts": [
            {
              "locale": "string",
              "name": "string",
              "descr": "string",
              "code": "string"
            }
          ],
          "texts@odata.count": 0,
          "localized": {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": "string"
          }
        },
        "quality_code": "string",
        "distance": 0
      }
    ],
    "shots@odata.count": 0,
    "par": 0,
    "score": 0,
    "result": {
      "name": "string",
      "descr": "string",
      "code": 0,
      "texts": [
        {
          "locale": "string",
          "name": "string",
          "descr": "string",
          "code": 0
        }
      ],
      "texts@odata.count": 0,
      "localized": {
        "locale": "string",
        "name": "string",
        "descr": "string",
        "code": 0
      }
    },
    "result_code": 0
  },
  "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "quality": {
    "name": "string",
    "descr": "string",
    "code": "string",
    "texts": [
      {
        "locale": "string",
        "name": "string",
        "descr": "string",
        "code": "string"
      }
    ],
    "texts@odata.count": 0,
    "localized": {
      "locale": "string",
      "name": "string",
      "descr": "string",
      "code": "string"
    }
  },
  "quality_code": "string",
  "distance": 0
}
```

<h3 id="create-a-single-rounds_holes_shot.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Created rounds_holes_shot|[CatalogService.Rounds_holes_shots](#schemacatalogservice.rounds_holes_shots)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Retrieve a single rounds_holes_shot.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID}) \
  -H 'Accept: application/json'

```

```http
GET /browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID}) HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})`

<h3 id="retrieve-a-single-rounds_holes_shot.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|
|$expand|query|array[string]|false|The value of $expand query option is a comma-separated list of navigation property names, stream property names, or $value indicating the stream content of a media-entity. The corresponding related entities and stream values will be represented inline, see [Expand](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionexpand)|
|up__up__ID|path|string(uuid)|true|key: up__up__ID|
|up__ID|path|string(uuid)|true|key: up__ID|
|ID|path|string(uuid)|true|key: ID|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$select|up__up__ID|
|$select|up__ID|
|$select|ID|
|$select|quality_code|
|$select|distance|
|$expand|*|
|$expand|up_|
|$expand|quality|

> Example responses

> 200 Response

```json
{
  "up_": {
    "up_": {
      "ID": "01234567-89ab-cdef-0123-456789abcdef",
      "createdAt": "2017-04-13T15:51:04.0000000Z",
      "createdBy": "string",
      "modifiedAt": "2017-04-13T15:51:04.0000000Z",
      "modifiedBy": "string",
      "title": "string",
      "holes": [
        {}
      ],
      "holes@odata.count": 0
    },
    "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
    "ID": "01234567-89ab-cdef-0123-456789abcdef",
    "holeNumber": 0,
    "shots": [
      {
        "up_": {},
        "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
        "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
        "ID": "01234567-89ab-cdef-0123-456789abcdef",
        "quality": {
          "name": "string",
          "descr": "string",
          "code": "string",
          "texts": [
            {
              "locale": "string",
              "name": "string",
              "descr": "string",
              "code": "string"
            }
          ],
          "texts@odata.count": 0,
          "localized": {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": "string"
          }
        },
        "quality_code": "string",
        "distance": 0
      }
    ],
    "shots@odata.count": 0,
    "par": 0,
    "score": 0,
    "result": {
      "name": "string",
      "descr": "string",
      "code": 0,
      "texts": [
        {
          "locale": "string",
          "name": "string",
          "descr": "string",
          "code": 0
        }
      ],
      "texts@odata.count": 0,
      "localized": {
        "locale": "string",
        "name": "string",
        "descr": "string",
        "code": 0
      }
    },
    "result_code": 0
  },
  "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "quality": {
    "name": "string",
    "descr": "string",
    "code": "string",
    "texts": [
      {
        "locale": "string",
        "name": "string",
        "descr": "string",
        "code": "string"
      }
    ],
    "texts@odata.count": 0,
    "localized": {
      "locale": "string",
      "name": "string",
      "descr": "string",
      "code": "string"
    }
  },
  "quality_code": "string",
  "distance": 0
}
```

<h3 id="retrieve-a-single-rounds_holes_shot.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved rounds_holes_shot|[CatalogService.Rounds_holes_shots](#schemacatalogservice.rounds_holes_shots)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Change a single rounds_holes_shot.

> Code samples

```shell
# You can also use wget
curl -X PATCH /browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID}) \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json'

```

```http
PATCH /browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID}) HTTP/1.1

Content-Type: application/json
Accept: application/json

```

```javascript
const inputBody = '{
  "quality_code": "string",
  "distance": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json'
};

fetch('/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => 'application/json'
}

result = RestClient.patch '/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json'
}

r = requests.patch('/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'application/json',
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('PATCH','/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("PATCH");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("PATCH", "/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`PATCH /Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})`

> Body parameter

```json
{
  "quality_code": "string",
  "distance": 0
}
```

<h3 id="change-a-single-rounds_holes_shot.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[CatalogService.Rounds_holes_shots-update](#schemacatalogservice.rounds_holes_shots-update)|true|New property values|
|up__up__ID|path|string(uuid)|true|key: up__up__ID|
|up__ID|path|string(uuid)|true|key: up__ID|
|ID|path|string(uuid)|true|key: ID|

> Example responses

> 4XX Response

```json
{
  "error": {
    "code": "string",
    "message": "string",
    "target": "string",
    "details": [
      {
        "code": "string",
        "message": "string",
        "target": "string"
      }
    ],
    "innererror": {}
  }
}
```

<h3 id="change-a-single-rounds_holes_shot.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Success|None|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Delete a single rounds_holes_shot.

> Code samples

```shell
# You can also use wget
curl -X DELETE /browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID}) \
  -H 'Accept: application/json'

```

```http
DELETE /browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID}) HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.delete '/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.delete('/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('DELETE','/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("DELETE");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("DELETE", "/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`DELETE /Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})`

<h3 id="delete-a-single-rounds_holes_shot.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|up__up__ID|path|string(uuid)|true|key: up__up__ID|
|up__ID|path|string(uuid)|true|key: up__ID|
|ID|path|string(uuid)|true|key: ID|

> Example responses

> 4XX Response

```json
{
  "error": {
    "code": "string",
    "message": "string",
    "target": "string",
    "details": [
      {
        "code": "string",
        "message": "string",
        "target": "string"
      }
    ],
    "innererror": {}
  }
}
```

<h3 id="delete-a-single-rounds_holes_shot.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Success|None|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Retrieve quality of a rounds_holes_shot.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})/quality \
  -H 'Accept: application/json'

```

```http
GET /browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})/quality HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})/quality',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})/quality',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})/quality', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})/quality', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})/quality");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})/quality", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})/quality`

<h3 id="retrieve-quality-of-a-rounds_holes_shot.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|
|$expand|query|array[string]|false|The value of $expand query option is a comma-separated list of navigation property names, stream property names, or $value indicating the stream content of a media-entity. The corresponding related entities and stream values will be represented inline, see [Expand](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionexpand)|
|up__up__ID|path|string(uuid)|true|key: up__up__ID|
|up__ID|path|string(uuid)|true|key: up__ID|
|ID|path|string(uuid)|true|key: ID|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$select|name|
|$select|descr|
|$select|code|
|$expand|*|
|$expand|texts|
|$expand|localized|

> Example responses

> 200 Response

```json
{
  "name": "string",
  "descr": "string",
  "code": "string",
  "texts": [
    {
      "locale": "string",
      "name": "string",
      "descr": "string",
      "code": "string"
    }
  ],
  "texts@odata.count": 0,
  "localized": {
    "locale": "string",
    "name": "string",
    "descr": "string",
    "code": "string"
  }
}
```

<h3 id="retrieve-quality-of-a-rounds_holes_shot.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved quality|[CatalogService.Quality](#schemacatalogservice.quality)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

## Retrieve up_ of a rounds_holes_shot.

> Code samples

```shell
# You can also use wget
curl -X GET /browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})/up_ \
  -H 'Accept: application/json'

```

```http
GET /browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})/up_ HTTP/1.1

Accept: application/json

```

```javascript

const headers = {
  'Accept':'application/json'
};

fetch('/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})/up_',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => 'application/json'
}

result = RestClient.get '/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})/up_',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': 'application/json'
}

r = requests.get('/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})/up_', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Accept' => 'application/json',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('GET','/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})/up_', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})/up_");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"application/json"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/browse/Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})/up_", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /Rounds_holes_shots(up__up__ID={up__up__ID},up__ID={up__ID},ID={ID})/up_`

<h3 id="retrieve-up_-of-a-rounds_holes_shot.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|$select|query|array[string]|false|Select properties to be returned, see [Select](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionselect)|
|$expand|query|array[string]|false|The value of $expand query option is a comma-separated list of navigation property names, stream property names, or $value indicating the stream content of a media-entity. The corresponding related entities and stream values will be represented inline, see [Expand](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptionexpand)|
|up__up__ID|path|string(uuid)|true|key: up__up__ID|
|up__ID|path|string(uuid)|true|key: up__ID|
|ID|path|string(uuid)|true|key: ID|

#### Enumerated Values

|Parameter|Value|
|---|---|
|$select|up__ID|
|$select|ID|
|$select|holeNumber|
|$select|par|
|$select|score|
|$select|result_code|
|$expand|*|
|$expand|up_|
|$expand|shots|
|$expand|result|

> Example responses

> 200 Response

```json
{
  "up_": {
    "ID": "01234567-89ab-cdef-0123-456789abcdef",
    "createdAt": "2017-04-13T15:51:04.0000000Z",
    "createdBy": "string",
    "modifiedAt": "2017-04-13T15:51:04.0000000Z",
    "modifiedBy": "string",
    "title": "string",
    "holes": [
      {
        "up_": {},
        "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
        "ID": "01234567-89ab-cdef-0123-456789abcdef",
        "holeNumber": 0,
        "shots": [
          {
            "up_": {},
            "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
            "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
            "ID": "01234567-89ab-cdef-0123-456789abcdef",
            "quality": {
              "name": "string",
              "descr": "string",
              "code": "string",
              "texts": [
                {
                  "locale": "string",
                  "name": "string",
                  "descr": "string",
                  "code": "string"
                }
              ],
              "texts@odata.count": 0,
              "localized": {
                "locale": "string",
                "name": "string",
                "descr": "string",
                "code": "string"
              }
            },
            "quality_code": "string",
            "distance": 0
          }
        ],
        "shots@odata.count": 0,
        "par": 0,
        "score": 0,
        "result": {
          "name": "string",
          "descr": "string",
          "code": 0,
          "texts": [
            {
              "locale": "string",
              "name": "string",
              "descr": "string",
              "code": 0
            }
          ],
          "texts@odata.count": 0,
          "localized": {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": 0
          }
        },
        "result_code": 0
      }
    ],
    "holes@odata.count": 0
  },
  "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "holeNumber": 0,
  "shots": [
    {
      "up_": {
        "up_": {
          "ID": "01234567-89ab-cdef-0123-456789abcdef",
          "createdAt": "2017-04-13T15:51:04.0000000Z",
          "createdBy": "string",
          "modifiedAt": "2017-04-13T15:51:04.0000000Z",
          "modifiedBy": "string",
          "title": "string",
          "holes": [
            {}
          ],
          "holes@odata.count": 0
        },
        "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
        "ID": "01234567-89ab-cdef-0123-456789abcdef",
        "holeNumber": 0,
        "shots": [],
        "shots@odata.count": 0,
        "par": 0,
        "score": 0,
        "result": {
          "name": "string",
          "descr": "string",
          "code": 0,
          "texts": [
            {
              "locale": "string",
              "name": "string",
              "descr": "string",
              "code": 0
            }
          ],
          "texts@odata.count": 0,
          "localized": {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": 0
          }
        },
        "result_code": 0
      },
      "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
      "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
      "ID": "01234567-89ab-cdef-0123-456789abcdef",
      "quality": {
        "name": "string",
        "descr": "string",
        "code": "string",
        "texts": [
          {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": "string"
          }
        ],
        "texts@odata.count": 0,
        "localized": {
          "locale": "string",
          "name": "string",
          "descr": "string",
          "code": "string"
        }
      },
      "quality_code": "string",
      "distance": 0
    }
  ],
  "shots@odata.count": 0,
  "par": 0,
  "score": 0,
  "result": {
    "name": "string",
    "descr": "string",
    "code": 0,
    "texts": [
      {
        "locale": "string",
        "name": "string",
        "descr": "string",
        "code": 0
      }
    ],
    "texts@odata.count": 0,
    "localized": {
      "locale": "string",
      "name": "string",
      "descr": "string",
      "code": 0
    }
  },
  "result_code": 0
}
```

<h3 id="retrieve-up_-of-a-rounds_holes_shot.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved up_|[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="-batch-requests">Batch Requests</h1>

## Send a group of requests

> Code samples

```shell
# You can also use wget
curl -X POST /browse/$batch \
  -H 'Content-Type: multipart/mixed;boundary=request-separator' \
  -H 'Accept: multipart/mixed'

```

```http
POST /browse/$batch HTTP/1.1

Content-Type: multipart/mixed;boundary=request-separator
Accept: multipart/mixed

```

```javascript
const inputBody = 'string';
const headers = {
  'Content-Type':'multipart/mixed;boundary=request-separator',
  'Accept':'multipart/mixed'
};

fetch('/browse/$batch',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'multipart/mixed;boundary=request-separator',
  'Accept' => 'multipart/mixed'
}

result = RestClient.post '/browse/$batch',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'multipart/mixed;boundary=request-separator',
  'Accept': 'multipart/mixed'
}

r = requests.post('/browse/$batch', headers = headers)

print(r.json())

```

```php
<?php

require 'vendor/autoload.php';

$headers = array(
    'Content-Type' => 'multipart/mixed;boundary=request-separator',
    'Accept' => 'multipart/mixed',
);

$client = new \GuzzleHttp\Client();

// Define array of request body.
$request_body = array();

try {
    $response = $client->request('POST','/browse/$batch', array(
        'headers' => $headers,
        'json' => $request_body,
       )
    );
    print_r($response->getBody()->getContents());
 }
 catch (\GuzzleHttp\Exception\BadResponseException $e) {
    // handle exception or api errors.
    print_r($e->getMessage());
 }

 // ...

```

```java
URL obj = new URL("/browse/$batch");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"multipart/mixed;boundary=request-separator"},
        "Accept": []string{"multipart/mixed"},
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/browse/$batch", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /$batch`

Group multiple requests into a single request payload, see [Batch Requests](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_BatchRequests).

*Please note that "Try it out" is not supported for this request.*

> Body parameter

<h3 id="send-a-group-of-requests-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|string|true|Batch request|

> Example responses

> 200 Response

> 4XX Response

```json
{
  "error": {
    "code": "string",
    "message": "string",
    "target": "string",
    "details": [
      {
        "code": "string",
        "message": "string",
        "target": "string"
      }
    ],
    "innererror": {}
  }
}
```

<h3 id="send-a-group-of-requests-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Batch response|string|
|4XX|Unknown|Error|[error](#schemaerror)|

<aside class="success">
This operation does not require authentication
</aside>

# Schemas

<h2 id="tocS_CatalogService.Quality">CatalogService.Quality</h2>
<!-- backwards compatibility -->
<a id="schemacatalogservice.quality"></a>
<a id="schema_CatalogService.Quality"></a>
<a id="tocScatalogservice.quality"></a>
<a id="tocscatalogservice.quality"></a>

```json
{
  "name": "string",
  "descr": "string",
  "code": "string",
  "texts": [
    {
      "locale": "string",
      "name": "string",
      "descr": "string",
      "code": "string"
    }
  ],
  "texts@odata.count": 0,
  "localized": {
    "locale": "string",
    "name": "string",
    "descr": "string",
    "code": "string"
  }
}

```

Quality

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string¦null|false|none|none|
|descr|string¦null|false|none|none|
|code|string|false|none|none|
|texts|[[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)]|false|none|none|
|texts@odata.count|[count](#schemacount)|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|localized|[CatalogService.Quality_texts](#schemacatalogservice.quality_texts)¦null|false|none|none|

<h2 id="tocS_CatalogService.Quality-create">CatalogService.Quality-create</h2>
<!-- backwards compatibility -->
<a id="schemacatalogservice.quality-create"></a>
<a id="schema_CatalogService.Quality-create"></a>
<a id="tocScatalogservice.quality-create"></a>
<a id="tocscatalogservice.quality-create"></a>

```json
{
  "name": "string",
  "descr": "string",
  "code": "string"
}

```

Quality (for create)

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string¦null|false|none|none|
|descr|string¦null|false|none|none|
|code|string|true|none|none|

<h2 id="tocS_CatalogService.Quality-update">CatalogService.Quality-update</h2>
<!-- backwards compatibility -->
<a id="schemacatalogservice.quality-update"></a>
<a id="schema_CatalogService.Quality-update"></a>
<a id="tocScatalogservice.quality-update"></a>
<a id="tocscatalogservice.quality-update"></a>

```json
{
  "name": "string",
  "descr": "string"
}

```

Quality (for update)

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string¦null|false|none|none|
|descr|string¦null|false|none|none|

<h2 id="tocS_CatalogService.Quality_texts">CatalogService.Quality_texts</h2>
<!-- backwards compatibility -->
<a id="schemacatalogservice.quality_texts"></a>
<a id="schema_CatalogService.Quality_texts"></a>
<a id="tocScatalogservice.quality_texts"></a>
<a id="tocscatalogservice.quality_texts"></a>

```json
{
  "locale": "string",
  "name": "string",
  "descr": "string",
  "code": "string"
}

```

Quality_texts

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|locale|string|false|none|none|
|name|string¦null|false|none|none|
|descr|string¦null|false|none|none|
|code|string|false|none|none|

<h2 id="tocS_CatalogService.Quality_texts-create">CatalogService.Quality_texts-create</h2>
<!-- backwards compatibility -->
<a id="schemacatalogservice.quality_texts-create"></a>
<a id="schema_CatalogService.Quality_texts-create"></a>
<a id="tocScatalogservice.quality_texts-create"></a>
<a id="tocscatalogservice.quality_texts-create"></a>

```json
{
  "locale": "string",
  "name": "string",
  "descr": "string",
  "code": "string"
}

```

Quality_texts (for create)

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|locale|string|true|none|none|
|name|string¦null|false|none|none|
|descr|string¦null|false|none|none|
|code|string|true|none|none|

<h2 id="tocS_CatalogService.Quality_texts-update">CatalogService.Quality_texts-update</h2>
<!-- backwards compatibility -->
<a id="schemacatalogservice.quality_texts-update"></a>
<a id="schema_CatalogService.Quality_texts-update"></a>
<a id="tocScatalogservice.quality_texts-update"></a>
<a id="tocscatalogservice.quality_texts-update"></a>

```json
{
  "name": "string",
  "descr": "string"
}

```

Quality_texts (for update)

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string¦null|false|none|none|
|descr|string¦null|false|none|none|

<h2 id="tocS_CatalogService.Result">CatalogService.Result</h2>
<!-- backwards compatibility -->
<a id="schemacatalogservice.result"></a>
<a id="schema_CatalogService.Result"></a>
<a id="tocScatalogservice.result"></a>
<a id="tocscatalogservice.result"></a>

```json
{
  "name": "string",
  "descr": "string",
  "code": 0,
  "texts": [
    {
      "locale": "string",
      "name": "string",
      "descr": "string",
      "code": 0
    }
  ],
  "texts@odata.count": 0,
  "localized": {
    "locale": "string",
    "name": "string",
    "descr": "string",
    "code": 0
  }
}

```

Result

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string¦null|false|none|none|
|descr|string¦null|false|none|none|
|code|integer(int32)|false|none|none|
|texts|[[CatalogService.Result_texts](#schemacatalogservice.result_texts)]|false|none|none|
|texts@odata.count|[count](#schemacount)|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|localized|[CatalogService.Result_texts](#schemacatalogservice.result_texts)¦null|false|none|none|

<h2 id="tocS_CatalogService.Result-create">CatalogService.Result-create</h2>
<!-- backwards compatibility -->
<a id="schemacatalogservice.result-create"></a>
<a id="schema_CatalogService.Result-create"></a>
<a id="tocScatalogservice.result-create"></a>
<a id="tocscatalogservice.result-create"></a>

```json
{
  "name": "string",
  "descr": "string",
  "code": 0
}

```

Result (for create)

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string¦null|false|none|none|
|descr|string¦null|false|none|none|
|code|integer(int32)|true|none|none|

<h2 id="tocS_CatalogService.Result-update">CatalogService.Result-update</h2>
<!-- backwards compatibility -->
<a id="schemacatalogservice.result-update"></a>
<a id="schema_CatalogService.Result-update"></a>
<a id="tocScatalogservice.result-update"></a>
<a id="tocscatalogservice.result-update"></a>

```json
{
  "name": "string",
  "descr": "string"
}

```

Result (for update)

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string¦null|false|none|none|
|descr|string¦null|false|none|none|

<h2 id="tocS_CatalogService.Result_texts">CatalogService.Result_texts</h2>
<!-- backwards compatibility -->
<a id="schemacatalogservice.result_texts"></a>
<a id="schema_CatalogService.Result_texts"></a>
<a id="tocScatalogservice.result_texts"></a>
<a id="tocscatalogservice.result_texts"></a>

```json
{
  "locale": "string",
  "name": "string",
  "descr": "string",
  "code": 0
}

```

Result_texts

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|locale|string|false|none|none|
|name|string¦null|false|none|none|
|descr|string¦null|false|none|none|
|code|integer(int32)|false|none|none|

<h2 id="tocS_CatalogService.Result_texts-create">CatalogService.Result_texts-create</h2>
<!-- backwards compatibility -->
<a id="schemacatalogservice.result_texts-create"></a>
<a id="schema_CatalogService.Result_texts-create"></a>
<a id="tocScatalogservice.result_texts-create"></a>
<a id="tocscatalogservice.result_texts-create"></a>

```json
{
  "locale": "string",
  "name": "string",
  "descr": "string",
  "code": 0
}

```

Result_texts (for create)

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|locale|string|true|none|none|
|name|string¦null|false|none|none|
|descr|string¦null|false|none|none|
|code|integer(int32)|true|none|none|

<h2 id="tocS_CatalogService.Result_texts-update">CatalogService.Result_texts-update</h2>
<!-- backwards compatibility -->
<a id="schemacatalogservice.result_texts-update"></a>
<a id="schema_CatalogService.Result_texts-update"></a>
<a id="tocScatalogservice.result_texts-update"></a>
<a id="tocscatalogservice.result_texts-update"></a>

```json
{
  "name": "string",
  "descr": "string"
}

```

Result_texts (for update)

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string¦null|false|none|none|
|descr|string¦null|false|none|none|

<h2 id="tocS_CatalogService.Rounds">CatalogService.Rounds</h2>
<!-- backwards compatibility -->
<a id="schemacatalogservice.rounds"></a>
<a id="schema_CatalogService.Rounds"></a>
<a id="tocScatalogservice.rounds"></a>
<a id="tocscatalogservice.rounds"></a>

```json
{
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "createdAt": "2017-04-13T15:51:04.0000000Z",
  "createdBy": "string",
  "modifiedAt": "2017-04-13T15:51:04.0000000Z",
  "modifiedBy": "string",
  "title": "string",
  "holes": [
    {
      "up_": {
        "ID": "01234567-89ab-cdef-0123-456789abcdef",
        "createdAt": "2017-04-13T15:51:04.0000000Z",
        "createdBy": "string",
        "modifiedAt": "2017-04-13T15:51:04.0000000Z",
        "modifiedBy": "string",
        "title": "string",
        "holes": [],
        "holes@odata.count": 0
      },
      "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
      "ID": "01234567-89ab-cdef-0123-456789abcdef",
      "holeNumber": 0,
      "shots": [
        {
          "up_": {},
          "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
          "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
          "ID": "01234567-89ab-cdef-0123-456789abcdef",
          "quality": {
            "name": "string",
            "descr": "string",
            "code": "string",
            "texts": [
              {
                "locale": "string",
                "name": "string",
                "descr": "string",
                "code": "string"
              }
            ],
            "texts@odata.count": 0,
            "localized": {
              "locale": "string",
              "name": "string",
              "descr": "string",
              "code": "string"
            }
          },
          "quality_code": "string",
          "distance": 0
        }
      ],
      "shots@odata.count": 0,
      "par": 0,
      "score": 0,
      "result": {
        "name": "string",
        "descr": "string",
        "code": 0,
        "texts": [
          {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": 0
          }
        ],
        "texts@odata.count": 0,
        "localized": {
          "locale": "string",
          "name": "string",
          "descr": "string",
          "code": 0
        }
      },
      "result_code": 0
    }
  ],
  "holes@odata.count": 0
}

```

Rounds

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ID|string(uuid)|false|none|none|
|createdAt|string(date-time)¦null|false|none|none|
|createdBy|string¦null|false|none|{i18n>UserID.Description}|
|modifiedAt|string(date-time)¦null|false|none|none|
|modifiedBy|string¦null|false|none|{i18n>UserID.Description}|
|title|string¦null|false|none|none|
|holes|[[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)]|false|none|none|
|holes@odata.count|[count](#schemacount)|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|

<h2 id="tocS_CatalogService.Rounds-create">CatalogService.Rounds-create</h2>
<!-- backwards compatibility -->
<a id="schemacatalogservice.rounds-create"></a>
<a id="schema_CatalogService.Rounds-create"></a>
<a id="tocScatalogservice.rounds-create"></a>
<a id="tocscatalogservice.rounds-create"></a>

```json
{
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "title": "string"
}

```

Rounds (for create)

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|ID|string(uuid)|true|none|none|
|title|string¦null|false|none|none|

<h2 id="tocS_CatalogService.Rounds-update">CatalogService.Rounds-update</h2>
<!-- backwards compatibility -->
<a id="schemacatalogservice.rounds-update"></a>
<a id="schema_CatalogService.Rounds-update"></a>
<a id="tocScatalogservice.rounds-update"></a>
<a id="tocscatalogservice.rounds-update"></a>

```json
{
  "title": "string"
}

```

Rounds (for update)

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|title|string¦null|false|none|none|

<h2 id="tocS_CatalogService.Rounds_holes">CatalogService.Rounds_holes</h2>
<!-- backwards compatibility -->
<a id="schemacatalogservice.rounds_holes"></a>
<a id="schema_CatalogService.Rounds_holes"></a>
<a id="tocScatalogservice.rounds_holes"></a>
<a id="tocscatalogservice.rounds_holes"></a>

```json
{
  "up_": {
    "ID": "01234567-89ab-cdef-0123-456789abcdef",
    "createdAt": "2017-04-13T15:51:04.0000000Z",
    "createdBy": "string",
    "modifiedAt": "2017-04-13T15:51:04.0000000Z",
    "modifiedBy": "string",
    "title": "string",
    "holes": [
      {
        "up_": {},
        "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
        "ID": "01234567-89ab-cdef-0123-456789abcdef",
        "holeNumber": 0,
        "shots": [
          {
            "up_": {},
            "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
            "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
            "ID": "01234567-89ab-cdef-0123-456789abcdef",
            "quality": {
              "name": "string",
              "descr": "string",
              "code": "string",
              "texts": [
                {
                  "locale": "string",
                  "name": "string",
                  "descr": "string",
                  "code": "string"
                }
              ],
              "texts@odata.count": 0,
              "localized": {
                "locale": "string",
                "name": "string",
                "descr": "string",
                "code": "string"
              }
            },
            "quality_code": "string",
            "distance": 0
          }
        ],
        "shots@odata.count": 0,
        "par": 0,
        "score": 0,
        "result": {
          "name": "string",
          "descr": "string",
          "code": 0,
          "texts": [
            {
              "locale": "string",
              "name": "string",
              "descr": "string",
              "code": 0
            }
          ],
          "texts@odata.count": 0,
          "localized": {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": 0
          }
        },
        "result_code": 0
      }
    ],
    "holes@odata.count": 0
  },
  "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "holeNumber": 0,
  "shots": [
    {
      "up_": {
        "up_": {
          "ID": "01234567-89ab-cdef-0123-456789abcdef",
          "createdAt": "2017-04-13T15:51:04.0000000Z",
          "createdBy": "string",
          "modifiedAt": "2017-04-13T15:51:04.0000000Z",
          "modifiedBy": "string",
          "title": "string",
          "holes": [
            {}
          ],
          "holes@odata.count": 0
        },
        "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
        "ID": "01234567-89ab-cdef-0123-456789abcdef",
        "holeNumber": 0,
        "shots": [],
        "shots@odata.count": 0,
        "par": 0,
        "score": 0,
        "result": {
          "name": "string",
          "descr": "string",
          "code": 0,
          "texts": [
            {
              "locale": "string",
              "name": "string",
              "descr": "string",
              "code": 0
            }
          ],
          "texts@odata.count": 0,
          "localized": {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": 0
          }
        },
        "result_code": 0
      },
      "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
      "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
      "ID": "01234567-89ab-cdef-0123-456789abcdef",
      "quality": {
        "name": "string",
        "descr": "string",
        "code": "string",
        "texts": [
          {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": "string"
          }
        ],
        "texts@odata.count": 0,
        "localized": {
          "locale": "string",
          "name": "string",
          "descr": "string",
          "code": "string"
        }
      },
      "quality_code": "string",
      "distance": 0
    }
  ],
  "shots@odata.count": 0,
  "par": 0,
  "score": 0,
  "result": {
    "name": "string",
    "descr": "string",
    "code": 0,
    "texts": [
      {
        "locale": "string",
        "name": "string",
        "descr": "string",
        "code": 0
      }
    ],
    "texts@odata.count": 0,
    "localized": {
      "locale": "string",
      "name": "string",
      "descr": "string",
      "code": 0
    }
  },
  "result_code": 0
}

```

Rounds_holes

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|up_|[CatalogService.Rounds](#schemacatalogservice.rounds)|false|none|none|
|up__ID|string(uuid)|false|none|none|
|ID|string(uuid)|false|none|none|
|holeNumber|integer(int32)¦null|false|none|none|
|shots|[[CatalogService.Rounds_holes_shots](#schemacatalogservice.rounds_holes_shots)]|false|none|none|
|shots@odata.count|[count](#schemacount)|false|none|The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.|
|par|integer(int32)¦null|false|none|none|
|score|integer(int32)¦null|false|none|none|
|result|[CatalogService.Result](#schemacatalogservice.result)¦null|false|none|none|
|result_code|integer(int32)¦null|false|none|none|

<h2 id="tocS_CatalogService.Rounds_holes-create">CatalogService.Rounds_holes-create</h2>
<!-- backwards compatibility -->
<a id="schemacatalogservice.rounds_holes-create"></a>
<a id="schema_CatalogService.Rounds_holes-create"></a>
<a id="tocScatalogservice.rounds_holes-create"></a>
<a id="tocscatalogservice.rounds_holes-create"></a>

```json
{
  "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "holeNumber": 0,
  "par": 0,
  "result_code": 0
}

```

Rounds_holes (for create)

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|up__ID|string(uuid)|true|none|none|
|ID|string(uuid)|true|none|none|
|holeNumber|integer(int32)¦null|false|none|none|
|par|integer(int32)¦null|false|none|none|
|result_code|integer(int32)¦null|false|none|none|

<h2 id="tocS_CatalogService.Rounds_holes-update">CatalogService.Rounds_holes-update</h2>
<!-- backwards compatibility -->
<a id="schemacatalogservice.rounds_holes-update"></a>
<a id="schema_CatalogService.Rounds_holes-update"></a>
<a id="tocScatalogservice.rounds_holes-update"></a>
<a id="tocscatalogservice.rounds_holes-update"></a>

```json
{
  "holeNumber": 0,
  "par": 0,
  "result_code": 0
}

```

Rounds_holes (for update)

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|holeNumber|integer(int32)¦null|false|none|none|
|par|integer(int32)¦null|false|none|none|
|result_code|integer(int32)¦null|false|none|none|

<h2 id="tocS_CatalogService.Rounds_holes_shots">CatalogService.Rounds_holes_shots</h2>
<!-- backwards compatibility -->
<a id="schemacatalogservice.rounds_holes_shots"></a>
<a id="schema_CatalogService.Rounds_holes_shots"></a>
<a id="tocScatalogservice.rounds_holes_shots"></a>
<a id="tocscatalogservice.rounds_holes_shots"></a>

```json
{
  "up_": {
    "up_": {
      "ID": "01234567-89ab-cdef-0123-456789abcdef",
      "createdAt": "2017-04-13T15:51:04.0000000Z",
      "createdBy": "string",
      "modifiedAt": "2017-04-13T15:51:04.0000000Z",
      "modifiedBy": "string",
      "title": "string",
      "holes": [
        {}
      ],
      "holes@odata.count": 0
    },
    "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
    "ID": "01234567-89ab-cdef-0123-456789abcdef",
    "holeNumber": 0,
    "shots": [
      {
        "up_": {},
        "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
        "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
        "ID": "01234567-89ab-cdef-0123-456789abcdef",
        "quality": {
          "name": "string",
          "descr": "string",
          "code": "string",
          "texts": [
            {
              "locale": "string",
              "name": "string",
              "descr": "string",
              "code": "string"
            }
          ],
          "texts@odata.count": 0,
          "localized": {
            "locale": "string",
            "name": "string",
            "descr": "string",
            "code": "string"
          }
        },
        "quality_code": "string",
        "distance": 0
      }
    ],
    "shots@odata.count": 0,
    "par": 0,
    "score": 0,
    "result": {
      "name": "string",
      "descr": "string",
      "code": 0,
      "texts": [
        {
          "locale": "string",
          "name": "string",
          "descr": "string",
          "code": 0
        }
      ],
      "texts@odata.count": 0,
      "localized": {
        "locale": "string",
        "name": "string",
        "descr": "string",
        "code": 0
      }
    },
    "result_code": 0
  },
  "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "quality": {
    "name": "string",
    "descr": "string",
    "code": "string",
    "texts": [
      {
        "locale": "string",
        "name": "string",
        "descr": "string",
        "code": "string"
      }
    ],
    "texts@odata.count": 0,
    "localized": {
      "locale": "string",
      "name": "string",
      "descr": "string",
      "code": "string"
    }
  },
  "quality_code": "string",
  "distance": 0
}

```

Rounds_holes_shots

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|up_|[CatalogService.Rounds_holes](#schemacatalogservice.rounds_holes)|false|none|none|
|up__up__ID|string(uuid)|false|none|none|
|up__ID|string(uuid)|false|none|none|
|ID|string(uuid)|false|none|none|
|quality|[CatalogService.Quality](#schemacatalogservice.quality)¦null|false|none|none|
|quality_code|string¦null|false|none|none|
|distance|integer(int32)¦null|false|none|none|

<h2 id="tocS_CatalogService.Rounds_holes_shots-create">CatalogService.Rounds_holes_shots-create</h2>
<!-- backwards compatibility -->
<a id="schemacatalogservice.rounds_holes_shots-create"></a>
<a id="schema_CatalogService.Rounds_holes_shots-create"></a>
<a id="tocScatalogservice.rounds_holes_shots-create"></a>
<a id="tocscatalogservice.rounds_holes_shots-create"></a>

```json
{
  "up__up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "up__ID": "01234567-89ab-cdef-0123-456789abcdef",
  "ID": "01234567-89ab-cdef-0123-456789abcdef",
  "quality_code": "string",
  "distance": 0
}

```

Rounds_holes_shots (for create)

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|up__up__ID|string(uuid)|true|none|none|
|up__ID|string(uuid)|true|none|none|
|ID|string(uuid)|true|none|none|
|quality_code|string¦null|false|none|none|
|distance|integer(int32)¦null|false|none|none|

<h2 id="tocS_CatalogService.Rounds_holes_shots-update">CatalogService.Rounds_holes_shots-update</h2>
<!-- backwards compatibility -->
<a id="schemacatalogservice.rounds_holes_shots-update"></a>
<a id="schema_CatalogService.Rounds_holes_shots-update"></a>
<a id="tocScatalogservice.rounds_holes_shots-update"></a>
<a id="tocscatalogservice.rounds_holes_shots-update"></a>

```json
{
  "quality_code": "string",
  "distance": 0
}

```

Rounds_holes_shots (for update)

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|quality_code|string¦null|false|none|none|
|distance|integer(int32)¦null|false|none|none|

<h2 id="tocS_count">count</h2>
<!-- backwards compatibility -->
<a id="schemacount"></a>
<a id="schema_count"></a>
<a id="tocScount"></a>
<a id="tocscount"></a>

```json
0

```

The number of entities in the collection. Available when using the [$count](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part1-protocol.html#sec_SystemQueryOptioncount) query option.

### Properties

anyOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|number|false|none|none|

or

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|string|false|none|none|

<h2 id="tocS_error">error</h2>
<!-- backwards compatibility -->
<a id="schemaerror"></a>
<a id="schema_error"></a>
<a id="tocSerror"></a>
<a id="tocserror"></a>

```json
{
  "error": {
    "code": "string",
    "message": "string",
    "target": "string",
    "details": [
      {
        "code": "string",
        "message": "string",
        "target": "string"
      }
    ],
    "innererror": {}
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|error|object|true|none|none|
|» code|string|true|none|none|
|» message|string|true|none|none|
|» target|string|false|none|none|
|» details|[object]|false|none|none|
|»» code|string|true|none|none|
|»» message|string|true|none|none|
|»» target|string|false|none|none|
|» innererror|object|false|none|The structure of this object is service-specific|

