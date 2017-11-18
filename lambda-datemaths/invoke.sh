aws lambda invoke \
    --invocation-type RequestResponse \
    --function-name lambda_datemaths \
    --payload file://~/dev/lambda-playground/lambda-datemaths/args.json \
    --profile lambda_user \
    out.txt
