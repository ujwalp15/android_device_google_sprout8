# Compile the kernel inline

ifeq ($(strip $(USE_SABER_INLINE_KERNEL_BUILDING)),true)
ifdef SM_VENDOR
  include $(SM_VENDOR)/device/kernel.mk
endif
endif

