%dw 2.0
output application/json
---
if(error.errorType.identifier == "RETRY_EXHAUSTED"){
"errorType": error.errorType.identifier,
"Message": error.description,
"code": 502
}
else if(error.errorType.identifier == "LIMIT_EXCEEDED"){
"errorType": error.errorType.identifier,
"Message": error.description,
"code": 429
}
else if(error.errorType.identifier == "EXPRESSION"){
"errorType": error.errorType.identifier,
"Message": error.description,
"code": 429
}
else {
"errorType": error.errorType.identifier,
"Message": error.description,
"code": 500
}