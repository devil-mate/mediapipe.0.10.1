# hello world
# bazel build --define -MEDIAPIPE_DISABLE_GPU=1 mediapipe/examples/desktop/hello_world:hello_world
# bazel build --copt -DMESA_EGL_NO_X11_HEADERS --copt -DEGL_NO_X11 mediapipe/examples/desktop/hello_world:hello_world

# pose_tracking
# # bazel build --define -MEDIAPIPE_DISABLE_GPU=1 mediapipe/examples/desktop/pose_tracking:pose_tracking_cpu
# bazel build --copt -DMESA_EGL_NO_X11_HEADERS --copt -DEGL_NO_X11 mediapipe/examples/desktop/pose_tracking:pose_tracking_gpu
bazel build --copt -DMESA_EGL_NO_X11_HEADERS --copt -DEGL_NO_X11  mediapipe/examples/desktop/pose_tracking:pose_tracking_gpu

# run
# /home/ubuntu/code/mediapipe-0.8.3.1/bazel-bin/mediapipe/examples/desktop/pose_tracking/pose_tracking_cpu \
#         --calculator_graph_config_file=/home/ubuntu/code/mediapipe-0.8.3.1/mediapipe/graphs/pose_tracking/pose_tracking_cpu.pbtxt \
#         --input_video_path=/home/ubuntu/temp/video_/dance2.mp4
/home/ubuntu/code/mediapipe.0.10.1/bazel-bin/mediapipe/examples/desktop/pose_tracking/pose_tracking_gpu \
        --calculator_graph_config_file=/home/ubuntu/code/mediapipe.0.10.1/mediapipe/graphs/pose_tracking/pose_tracking_gpu.pbtxt \
        --input_video_path=/home/ubuntu/temp/video_/tineng/qtywqz.mp4


# cuda

#  bazel build -c opt --config=cuda --spawn_strategy=local \
#     --define no_aws_support=true --copt -DMESA_EGL_NO_X11_HEADERS \
#     mediapipe/examples/desktop/object_detection:object_detection_tensorflow
#  bazel build -c opt --config=cuda --spawn_strategy=local \
#     --define no_aws_support=true --copt -DMESA_EGL_NO_X11_HEADERS \
#     mediapipe/examples/desktop/pose_tracking:pose_tracking_gpu
