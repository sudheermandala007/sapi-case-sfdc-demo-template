%dw 2.0
output application/json
---
if(error.errorType.identifier == "INVALID_INPUT") {
"errorType": error.errorType.identifier,
"Message": error.description,
"code": 400
}
else if(error.errorType.identifier == "NOT_FOUND") {
"errorType": error.errorType.identifier,
"Message": error.description,
"code": 404
}
else
{
"errorType": error.errorType.identifier,
"Message": error.description,
"code": 500
}

