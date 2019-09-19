# ORBSLAM2-Combined-with-VOXBLOX

## Introduction

This work is based on [ORB_SLAM2](https://github.com/raulmur/ORB_SLAM2), [ORB_SLAM2_ROS](https://github.com/ethz-asl/orb_slam_2_ros) and [Voxblox](https://github.com/ethz-asl/voxblox). Thanks for Rual and Helen's great work. 

Using this pipeline, you can generate real time mesh on a CPU-based PC. A demo is shown [here](https://drive.google.com/file/d/1mRL4ZOPZY6kBwtBwBSlb36tXZ1o8Qs7p/view?usp=sharing).


## Installation

Please refer to [ORB_SLAM2 installation page](https://github.com/raulmur/ORB_SLAM2) and [Voxblox installation page](https://voxblox.readthedocs.io/en/latest/pages/Installation.html).

## How to use

- If you are using primesense:
  -Open 4 terminals. Input 
  ```
  roslaunch openni2_launch openni2.launch
  roslaunch orb_slam_2_ros run_orb_slam_2.launch
  roslaunch voxblox_ros try.launch
  rosrun rviz rviz
  ```
  - To save the mesh:
  Open another terminal. Use `rosservice call /voxblox_node/generate_mesh "{}" `
  
  - To change mesh into point cloud:
```
cd ~/catkin_ws123/testing
pcl_ply2pcd 1.ply 1.pcd
./build/meshp
```

- If you are using Kinect:
  The only difference is in first step.
  - Open 4 terminals. Input:
```
roslaunch freenect_launch freenect.launch
roslaunch orb_slam_2_ros run_orb_slam_2.launch
roslaunch voxblox_ros try.launch
rosrun rviz rviz
```

- If you want to change voxel size, go `your location/catkin_ws123/src/voxblox/voxblox_ros/launch/try.launch`.
Modify the following:

```
 <arg name="voxel_size" default="0.01"/> # This is for defining the voxel size
 <param name="mesh_filename" value="/home/catkin_ws123/testing/1.ply" /> #this is the output location
```
