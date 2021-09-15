# Message taken from https://github.com/interaction-lab/openface_ros/blob/master/msg/Face.msg

std_msgs/Header header

float64 detection_confidence

geometry_msgs/Vector3 left_gaze
geometry_msgs/Vector3 right_gaze

geometry_msgs/Pose head_pose

geometry_msgs/Point[] landmarks_3d
geometry_msgs/Point[] landmarks_2d

FaceActionUnit[] action_units
