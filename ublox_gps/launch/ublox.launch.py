from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([
        Node(
            package='ublox_gps',
            executable='ublox_gps_node',
            name='gnss',
            namespace='/m8u',
            output='both'
        )
    ])