# CFG-TP5 (0x06 0x31)
# Timepulse Configuration

uint8 CLASS_ID = 6
uint8 MESSAGE_ID = 49

uint8 tp_idx                    # -     # Time pulse selection (0 = TIMEPULSE, 1 = TIMEPULSE2)
uint8 version                   # -     # Message version (0x01 for this version)

# no array no serialization :)
uint8 reserved1_0               # -     # reserved [0]
uint8 reserved1_1               # -     # reserved [1]

int16 ant_cable_delay           # ns    # Antenna cable delay
int16 rf_group_delay            # ns    # RF group delay

uint32 freq_period              # Hz or us  # Frequency or period time, depending on setting of bit 'isFreq'
uint32 freq_period_logic        # Hz or us  # Frequency or period time when locked to GNSS time, only used if 'lockedOtherSet' is set

uint32 pulse_len_ratio          # us or 2^-32   # Pulse length or duty cycle, depending on 'isLength'
uint32 pulse_len_ratio_lock     # us or 2^-32   # Pulse length or duty cycle when locked to GNSS time, only used if 'lockedOtherSet' is set

int32 user_config_delay         # ns    # User-configurable time pulse delay
uint32 flags                    # -     # Configuration flags

uint32 FLAGS_ACTIVE_POS = 0
uint32 FLAGS_LOCK_GNSS_FREQ_POS = 1
uint32 FLAGS_LOCKED_OTHER_SET_POS = 2
uint32 FLAGS_IS_FREQ_POS = 3
uint32 FLAGS_IS_LENGTH_POS = 4
uint32 FLAGS_ALIGN_TO_TOW_POS = 5
uint32 FLAGS_POLARITY_POS = 6
uint32 FLAGS_GRID_TO_UTC_GNSS_POS = 7
uint32 FLAGS_SYNC_MODE_POS = 11