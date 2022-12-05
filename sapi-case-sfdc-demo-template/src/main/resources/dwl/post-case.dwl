%dw 2.0
output application/java
---
[{

	SuppliedName: payload."supplied-name",
	SuppliedCompany: payload."supplied-company",
	Type: payload."type",
	Status: payload.status,
	Reason: payload.reason,
	Origin: payload.origin,
	Subject: payload.subject,
	Priority: payload.priority,
	Description: payload.description
}]