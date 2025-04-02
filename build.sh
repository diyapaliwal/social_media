docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID diyapaliwal/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID diyapaliwal/$JOB_NAME:latest

docker push diyapaliwal/$JOB_NAME:$BUILD_ID

docker push diyapaliwal/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID diyapaliwal/$JOB_NAME:$BUILD_ID diyapaliwal/$JOB_NAME:latest
