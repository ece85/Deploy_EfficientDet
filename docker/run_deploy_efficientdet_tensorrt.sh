set -x
set -e


docker run --gpus all -it -v $PWD/../TensorRT:/TensorRT -v $PWD/../saved_model:/saved_model  -v $PWD/../deploy_efficientdet:/deploy_efficientdet --rm --workdir /deploy_efficientdet deploy_efficientdet_tensorrt ./deploy_efficientdet.sh