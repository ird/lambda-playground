### Description
lambda-datemaths/lambda_datemaths.py - lambda handler and function logic
lambda-datemaths/upload.sh - awscli command to upload function
lambda-datemaths/invoke.sh - awscli command to create function


### Build & Deploy
To rebuild the environment post git clone:
```
$ virtualenv --no-site-packages --python=VERSION .env && source .env/bin/activate && pip install -r requirements.txt
```

To test:
```
$ aws lambda list-functions --profile lambda_user
```

To update and run lambda-datemaths:
```
zip lambda_function.zip lambda_function.py
./upload.sh
./invoke.sh
cat out.txt
```
