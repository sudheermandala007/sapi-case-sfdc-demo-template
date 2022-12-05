%dw 2.0
output application/java
---
[{
	Id: payload.id,
	Type: payload."type",
	Status: payload.status,
	Reason: payload.reason,
	Origin: payload.origin,
	Subject: payload.subject,
	Priority: payload.priority,
	Description: payload.description
}]