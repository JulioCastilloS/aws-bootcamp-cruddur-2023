aws budgets create-budget \
    --account-id $AWS_ACCOUNT_ID \
    --budget file://aws/json/budget.json \
    --notifications-with-subscribers file://aws/json/budget-notifications-with-subscribers.json

aws sns subscribe \
    --topic-arn="arn:aws:sns:us-east-1:962345959758:billing-alarm" \
    --protocol=email \
    --notification-endpoint=jcastis@gmail.com

aws cloudwatch put-metric-alarm --cli-input-json file://aws/json/alarm_config.json