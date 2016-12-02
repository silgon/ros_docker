build_indigo_nvidia:
	docker build -t silgon/ros:indigo-pr2-nvidia -f indigo-pr2-nvidia.Dockerfile .
run_indigo_nvidia:
	xhost +local:root
	nvidia-docker run --rm -it -e DISPLAY -e QT_X11_NO_MITSHM=1 -v /tmp/.X11-unix:/tmp/.X11-unix \
	silgon/ros:indigo-pr2-nvidia roslaunch pr2_gazebo pr2_empty_world.launch
	xhost -local:root

build_indigo_intel:
	docker build -t silgon/ros:indigo-pr2-intel -f indigo-pr2-intel.Dockerfile .
run_indigo_intel:
	xhost +local:root
	docker run --rm -it -e DISPLAY -e QT_X11_NO_MITSHM=1 -v /tmp/.X11-unix:/tmp/.X11-unix \
	silgon/ros:indigo-pr2-intel roslaunch pr2_gazebo pr2_empty_world.launch
	xhost -local:root

