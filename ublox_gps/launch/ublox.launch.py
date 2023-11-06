import os
from ament_index_python.packages import get_package_share_directory
from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():

    config_directory = os.path.join(get_package_share_directory('launchpad'), 'config')
    params = os.path.join(config_directory, 'ublox', 'm8u.yaml')
    ublox_gps = Node(
        package='ublox_gps',
        executable='ublox_gps_node',
        name='gnss',
        namespace='/m8u',
        output='both',
        parameters=[params]
    )

    return LaunchDescription([
        ublox_gps
    ])