To rebuild the environment post git clone:<br />
$ virtualenv --no-site-packages --python=VERSION .env &&
source .env/bin/activate &&
pip install -r requirements.txt <br />
To test: $ aws lambda list-functions --profile lambda_user
<br />
<br />

To update and run hello-world-python: <br />
zip lambda_function.zip lambda_function.py <br />
./upload.sh <br />
./invoke.sh <br />
cat out.txt
