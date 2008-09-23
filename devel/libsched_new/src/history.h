#ifndef __HISTORY_H__
#define __HISTORY_H__


#include <stdbool.h>
#include <stdio.h>
#include <sched_file.h>



typedef struct history_struct history_type;


// Manipulators.
void           history_free(history_type *);
void           history_fwrite(const history_type *, FILE * stream);
history_type * history_fread_alloc(FILE * stream);
history_type * history_alloc_from_sched_file(const sched_file_type *);



// Accessors.
double history_get_group_var(const history_type *, int, const char *, const char *, bool *);
#endif
