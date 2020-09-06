docker stop pytorch_tensorboard
docker rm pytorch_tensorboard
docker image rm pytorch_tensorboard
docker build -t pytorch_tensorboard .
docker run --gpus all --rm -p 8888:8888 \
-v $(pwd):/workspace/src/ \
--name pytorch_tensorboard \
-it pytorch_tensorboard
