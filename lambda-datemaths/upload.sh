aws lambda create-function --profile lambda_user \
  --function-name lambda_datemaths \
  --role arn:aws:iam::574328381474:role/service-role/lambda_user \
  --handler lambda_datemaths.lambda_handler \
  --timeout 30 \
  --runtime python3.6 \
  --zip-file fileb://~/dev/lambda-playground/lambda-datemaths/lambda_datemaths.zip
