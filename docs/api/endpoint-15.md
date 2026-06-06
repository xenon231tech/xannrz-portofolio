# API Endpoint $i Documentation

## Endpoint Details

### GET /api/endpoint-$i
Retrieve data from endpoint $i

### Description
This endpoint returns portfolio data for endpoint $i. It supports filtering, sorting, and pagination.

### Request

**URL**: `/api/endpoint-$i`

**Method**: `GET`

**Headers**:
```
Content-Type: application/json
Authorization: Bearer {token}
```

**Query Parameters**:
| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| id | string | No | Filter by ID |
| page | number | No | Page number (default: 1) |
| limit | number | No | Items per page (default: 10) |
| sort | string | No | Sort field |
| order | string | No | Sort order (asc/desc) |

### Response

**Status**: 200 OK

```json
{
  "success": true,
  "data": [
    {
      "id": 1,
      "title": "Item 1",
      "description": "Description for item 1",
      "status": "active",
      "createdAt": "2026-06-06T00:00:00Z",
      "updatedAt": "2026-06-06T00:00:00Z"
    }
  ],
  "pagination": {
    "page": 1,
    "limit": 10,
    "total": 100,
    "pages": 10
  }
}
```

### Error Responses

**Status**: 400 Bad Request
```json
{
  "success": false,
  "error": "Invalid query parameters"
}
```

**Status**: 401 Unauthorized
```json
{
  "success": false,
  "error": "Authentication required"
}
```

**Status**: 500 Internal Server Error
```json
{
  "success": false,
  "error": "Internal server error"
}
```

### Examples

#### cURL
```bash
curl -X GET "http://localhost:3000/api/endpoint-$i?page=1&limit=10" \
  -H "Authorization: Bearer your_token"
```

#### JavaScript/Fetch
```javascript
const response = await fetch('/api/endpoint-$i?page=1&limit=10', {
  method: 'GET',
  headers: {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer your_token'
  }
});

const data = await response.json();
console.log(data);
```

#### Python/Requests
```python
import requests

headers = {
    'Authorization': 'Bearer your_token'
}

response = requests.get(
    'http://localhost:3000/api/endpoint-$i',
    params={'page': 1, 'limit': 10},
    headers=headers
)

data = response.json()
print(data)
```

### Rate Limiting

- **Limit**: 1000 requests per hour
- **Header**: `X-RateLimit-Limit: 1000`
- **Remaining**: `X-RateLimit-Remaining: 999`
- **Reset**: `X-RateLimit-Reset: 1623000000`

### Related Endpoints

- [POST /api/endpoint-$i](#) - Create new item
- [PUT /api/endpoint-$i/:id](#) - Update item
- [DELETE /api/endpoint-$i/:id](#) - Delete item

**Last Updated**: 2026-06-06
