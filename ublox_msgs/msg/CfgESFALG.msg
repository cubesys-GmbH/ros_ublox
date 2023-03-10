# CFG-ESFALG  (0x06 0x56)
# Get/set IMU-mount misalignment configuration
#
# Get/set the IMU-mount misalignment configuration (rotation from installation-
# frame to the IMU-frame).
# A detailed description on how to compose this configuration is given in the ADR
# Installation section for ADR products.
# A detailed description on how to compose this configuration is given in the UDR
# Installation section for UDR products.

uint8 CLASS_ID = 6
uint8 MESSAGE_ID = 86

uint32 bitfield
uint32 AUTO_IMU_MOUNT_DISABLE = 0
uint32 AUTO_IMU_MOUNT_ENABLE  = 256

# user defined angles in 1e-2
uint32 yaw      #  0...36000
int16 pitch     # -9000...+9000
int16 roll      # -18000...+18000
