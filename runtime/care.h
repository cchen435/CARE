/**
 * this file exports the CARE interface
 */
#ifndef _CARE_H_
#define _CARE_H_

/*
 * care_init: initialize the care library. It is called by application before
 * entering the main compuation
 */
extern void care_user_init() __attribute__((constructor));

#endif