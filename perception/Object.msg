# Taken from https://github.com/b-it-bots/mas_perception_msgs/blob/kinetic/msg/Object.msg

# The pose where the object can be found
geometry_msgs/PoseStamped pose

# The dimensions of the object
geometry_msgs/Vector3Stamped dimensions

# Name of the object determined e.g. by the recognition
string name

# Categorization of this object
string category

# Probability
float32 probability

# dominant object color
NamedColor dominant_color

# object shape
NamedShape shape

# View representation including an RGB image of the object, a point cloud,
# and potentially an embedding of the image. An array since we may have
# multiple views of the same object
ObjectView[] views

# The bounding box of the object
vision_msgs/BoundingBox3D bounding_box

# The ROI of image (2D BBox)
sensor_msgs/RegionOfInterest roi
