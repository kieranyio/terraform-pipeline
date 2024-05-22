# Retrieve the plan for a run
# https://developer.hashicorp.com/terraform/cloud-docs/api-docs/plans
curl \
  --header "Authorization: Bearer $TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  --location \
  https://app.terraform.io/api/v2/runs/run-xxx/plan/json-output |
  > json-output.json
