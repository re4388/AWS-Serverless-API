
# AWS serverless api (via api-gateway, lambda, dynamoDB, SAM-deploy)


## How to test it?

- just put below in browser and you can see result

- `get all items` API
https://xcd5wvrlqe.execute-api.us-east-1.amazonaws.com/Prod

- `git item by id` API
https://xcd5wvrlqe.execute-api.us-east-1.amazonaws.com/Prod/id/1

- `put item` API
curl -v -X "POST" -H "Content-Type: application/json" -d "{\"id\": \"123\", \"name\": \"Jack\"}" https://xcd5wvrlqe.execute-api.us-east-1.amazonaws.com/Prod



## How to deploy

- `sam build && sam deploy --guided`
- and then follow the instruction


## How to monitor

### lambda Console:
https://us-east-1.console.aws.amazon.com/lambda/home?region=us-east-1#/functions


### Cloudwatch Console:

- getALlItemLambda
https://us-east-1.console.aws.amazon.com/cloudwatch/home?region=us-east-1#logsV2:log-groups/log-group/$252Faws$252Flambda$252Fsam-stack-1-getAllItemsFunction-loQlKEPMENjs/log-events/2022$252F08$252F18$252F$255B$2524LATEST$255D2476448c4fd24fdcb6ce9988b8ec980c



### DynamoDB Console
https://us-east-1.console.aws.amazon.com/dynamodbv2/home?region=us-east-1#item-explorer?initialTagKey=&maximize=true&table=sam-stack-1-SampleTable-CPFGVGSDFPCK


### API gateway
https://us-east-1.console.aws.amazon.com/apigateway/main/apis?region=us-east-1


### cost monitor
- run `checkcost.sh` to get the cost
- use below link to check the cost in details
https://us-east-1.console.aws.amazon.com/cost-management/home?region=us-east-1#/custom?groupBy=Service&hasBlended=false&hasAmortized=false&excludeDiscounts=true&excludeTaggedResources=false&excludeCategorizedResources=false&excludeForecast=false&timeRangeOption=Last6Months&granularity=Monthly&reportName=&reportType=CostUsage&isTemplate=true&filter=%5B%5D&chartStyle=Group&forecastTimeRangeOption=None&usageAs=usageQuantity&startDate=2022-02-01&endDate=2022-07-31


## How to clean up
- Go to cloudformation to clean up the tech-stack 
