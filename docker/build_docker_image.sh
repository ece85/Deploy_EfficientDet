set -x
set -e

docker pull nvcr.io/nvidia/tensorflow:22.01-tf1-py3

cp ../TensorRT/samples/python/efficientdet/requirements.txt .

docker build -t deploy_efficientdet_tensorrt_tf1 .

rm requirements.txt




