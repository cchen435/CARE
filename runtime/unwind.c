
#define UNW_LOCAL_ONLY
#include <libunwind.h>

#include "err.h"

#include "unwind.map"

care_status_t care_unwind_get_signal_frame(unw_cursor_t *cursor) {
  unw_context_t ctxt;
  unw_word_t ip;
  while (unw_step(cursor) > 0) {
    if (unw_is_signal_frame(cursor) > 0) return CARE_SUCCESS;
  }
  return CARE_FAILURE;
}

care_status_t care_unwind_get_IP(unw_cursor_t *cursor, unw_word_t IP) {
  if (0 == unw_get_reg(cursor, UNW_REG_IP, &IP)) return CARE_SUCCESS;
  return CARE_FAILURE;
}

