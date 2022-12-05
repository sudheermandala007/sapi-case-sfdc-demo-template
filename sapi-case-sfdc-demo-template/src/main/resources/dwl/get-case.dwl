%dw 2.0
output application/json
skipNullOn = "everywhere"
---
payload map (item, index) -> {
	"id": item.Id,
	"subject": item.Subject,
	"description": item.Description,
	"supplied-name": item.SuppliedName,
	"supplied-company": item.SuppliedCompany,
	"type": item.Type,
	"status": item.Status,
	"origin": item.Origin,
	"reason": item.Reason,
	"priority": item.Priority
}