The urdf and all the needed files for the ur5_barrett robot. All the files from ur5 arm, kinect and barrett hand is imported. So we don't have to depend on the other packages





From the version of ur5_barrett_dist.xacro is kinect is moved from the body of the robot to the front for easy planning. When working on the real robot the distance from the kinect to the stand can be measured and the values can be easily entered in the kinect_properties2.xacro file where all the 6DOF pose of the kinect is included.
