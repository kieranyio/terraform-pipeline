import json
import config

resource_type = [
  'aws_iam_policy_document',
  'aws_vpc'
]

plan_file = open('json-output.json')

data = json.load(plan_file)

for resource in data['resource_changes']:
  if resource['mode'] == 'managed' and resource['type'] in resource_type:
    print('Plan requires security approval')
    exit()

print('Plan does not require security approval')
