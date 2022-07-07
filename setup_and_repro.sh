set -x
set -e

git clone https://github.com/NVIDIA/TensorRT.git

cd docker
./build_docker_image.sh
./run_deploy_efficientdet_tensorrt.sh
