aws ce get-cost-and-usage --time-period Start=2022-01-01,End=2022-07-20 --granularity MONTHLY --metrics "BlendedCost" "UnblendedCost" "UsageQuantity" | jq '"Until:", .ResultsByTime[-3:][].TimePeriod.End, "USD" ,.ResultsByTime[-3:][].Total.BlendedCost.Amount'



# Tutorial:
# https://earthly.dev/blog/jq-select/
# https://mozillazg.com/2018/01/jq-use-examples-cookbook.html
# https://jqplay.org/
# (in playgrpund, no need to use '', we need to do that at here bash script
