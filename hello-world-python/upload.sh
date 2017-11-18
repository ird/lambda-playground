aws lambda create-function --profile lambda_user \
  --function-name lambda_function \
  --role arn:aws:iam::574328381474:role/service-role/lambda_user \
  --handler lambda_function.lambda_handler \
  --timeout 30 \
  --runtime python3.6 \
  --zip-file fileb://~/dev/lambda-playground/hello-world-python/lambda_function.zip
