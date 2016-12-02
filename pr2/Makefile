build_all: build_indigo_nvidia build_indigo_intel

build_indigo_nvidia:
	cat indigo-pr2-empty-world.Dockerfile ../nvidia_part.Dockerfile | docker build -t silgon/ros:indigo-pr2-nvidia -

build_indigo_intel:
	docker build -t silgon/ros:indigo-pr2-intel -f indigo-pr2-empty-world.Dockerfile .

run_indigo_nvidia:
	xhost +local:root
	nvidia-docker run --rm -it -e DISPLAY -e QT_X11_NO_MITSHM=1 -v /tmp/.X11-unix:/tmp/.X11-unix \
	silgon/ros:indigo-pr2-nvidia roslaunch pr2_gazebo pr2_empty_world.launch
	xhost -local:root

run_indigo_intel:
	xhost +local:root
	docker run --rm -it -e DISPLAY -e QT_X11_NO_MITSHM=1 -v /tmp/.X11-unix:/tmp/.X11-unix \
	silgon/ros:indigo-pr2-intel roslaunch pr2_gazebo pr2_empty_world.launch
	xhost -local:root

