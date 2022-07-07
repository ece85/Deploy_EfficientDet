set -x
set -e

docker pull nvcr.io/nvidia/tensorflow:22.06-tf2-py3

cp ../TensorRT/samples/python/efficientdet/requirements.txt .

docker build -t deploy_efficientdet_tensorrt .

rm requirements.txt




