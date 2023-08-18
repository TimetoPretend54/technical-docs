# Postman

Within this directory can find stubbed/template references for Postman Collections Structures.

## Notes around organizing Postman Collections

### Variables Tab vs Folders Within Collections
The Variables tab is only available within a collection.

Workaround/Fix
1. Create a folder within a collection
2. Navigate to Folder (Notice there is still an `Authorization` and `Pre-request Script` Tabs)
3. Open `Pre-request Script`
4. Can add variables here in javascript:
    ex: 
    ```javascript
    //*****API INFORMATION******//---------------------------------
    pm.variables.set("api_key", "12345")

    //*****USER INFORMATION******//---------------------------------
    pm.variables.set("user_id", "user-123")
    pm.variables.set("user_email", "user@test.com")
    ...
    ```
5. Can utilize these variables as you would in a normal Postman Collection
    ex:
    ```
    localhost/v1/someapi?user_email={{user_email}}
    ```
6. Refer to [Example Postman Template Below](#example-postman-template) for more concrete examples

### Example Postman Templates

- [`API Service (Sub-Services) Template.postman_collection.json`](./API%20Service%20(Sub-Services)%20Template.postman_collection.json)
- [`API Service (No Sub-Services) Template.postman_collection.json`](./API%20Service%20(No%20Sub-Services)%20Template.postman_collection.json)
