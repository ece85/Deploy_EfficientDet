set -x
set -e


cd /TensorRT/tools/onnx-graphsurgeon
make install
cd -

saved_model=/saved_model
onnx_file=$saved_model/model.onnx
saved_engine=$saved_model/model.trt

cd /TensorRT/samples/python/efficientdet

python3 create_onnx.py \
    --input_size 1024,1024 \
    --saved_model $saved_model \
    --onnx $onnx_file
