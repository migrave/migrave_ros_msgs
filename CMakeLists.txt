cmake_minimum_required(VERSION 3.0.2)
project(migrave_ros_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  genmsg
  std_msgs
  geometry_msgs
  sensor_msgs
  vision_msgs
  actionlib_msgs
  actionlib
)

add_message_files(
   DIRECTORY interaction
   FILES
   TherapistFeedback.msg
)

add_message_files(
   DIRECTORY monitoring
   FILES
   Component.msg
   ComponentState.msg
   Event.msg
)

add_message_files(
   DIRECTORY perception
   FILES
   Object.msg
   NamedShape.msg
   NamedColor.msg
   ObjectView.msg
   Embedding.msg
   Activity.msg
   AudioFeatures.msg
   Face.msg
   Faces.msg
   FaceActionUnit.msg
   SoundDirection.msg
   BodyPart.msg
   Skeleton.msg
   Skeletons.msg
)

add_message_files(
   DIRECTORY performance
   FILES
   GameActivity.msg
   GamePerformance.msg
   OverallGamePerformance.msg
)

add_message_files(
   DIRECTORY person_state
   FILES
   Person.msg
   AffectiveState.msg
)

add_message_files(
   DIRECTORY robot_action
   FILES
   RobotAction.msg
)

#add_action_files(
#  DIRECTORY action
#  FILES
#
#)

#add_service_files(
#  DIRECTORY srv
#  FILES
#
#)

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
  sensor_msgs
  vision_msgs
  actionlib_msgs
)

catkin_package(
   CATKIN_DEPENDS
     message_runtime
     std_msgs
     geometry_msgs
     sensor_msgs
     vision_msgs
     actionlib_msgs
)
