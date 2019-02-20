#ifndef _CARE_ERR_H
#define _CARE_ERR_H

typedef enum status {
  CARE_SUCCESS = 0,
  CARE_FAILURE,
  CARE_ENV_NULL,
  CARE_DWARF_NULL,
  CARE_TABLE_NULL,
  CARE_RKLIB_NULL,
  CARE_DBG_NULL,
} care_status_t;

#endif