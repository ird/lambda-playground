aws lambda invoke \
    --invocation-type RequestResponse \
    --function-name lambda_function \
    --payload file://~/dev/lambda-playground/hello-world-python/args.json \
    --profile lambda_user \
    out.txt
