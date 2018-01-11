body='{
    "request":{
        "branch":"master",
        "message":"Override the commit message: This was kicked by an API request."
        }
    }';

curl -s -X POST \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -H "Travis-API-Version: 3" \
    -H "Authorization: token ${ACCESS_TOKEN}" \
    -Body $body \
    https://api.travis-ci.org/repo/${OWNER}%2F${REPO}/requests;
