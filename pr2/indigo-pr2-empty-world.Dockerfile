FROM osrf/ros:indigo-desktop-full

RUN apt-get update && apt-get install -y \
    ros-${ROS_DISTRO}-pr2* \
&& rm -rf /var/lib/apt/lists/*

RUN gzserver --verbose --iters 1 /usr/share/gazebo-2.2/worlds/empty.world
# RUN gzserver --verbose --iters 1 /opt/ros/${ROS_DISTRO}/share/turtlebot_gazebo/worlds/playground.world
