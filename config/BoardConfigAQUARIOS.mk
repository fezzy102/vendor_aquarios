# Charger
ifneq ($(WITH_AQUARIOS_CHARGER),false)
    BOARD_HAL_STATIC_LIBRARIES := libhealthd.aquarios
endif
