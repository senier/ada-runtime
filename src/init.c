int   __gl_main_priority                 = -1;
int   __gl_main_cpu                      = -1;
int   __gl_time_slice_val                = -1;
char  __gl_wc_encoding                   = 'n';
char  __gl_locking_policy                = ' ';
char  __gl_queuing_policy                = ' ';
char  __gl_task_dispatching_policy       = ' ';
char *__gl_priority_specific_dispatching = 0;
int   __gl_num_specific_dispatching      = 0;
char *__gl_interrupt_states              = 0;
int   __gl_num_interrupt_states          = 0;
int   __gl_unreserve_all_interrupts      = 0;
int   __gl_detect_blocking               = 0;
int   __gl_default_stack_size            = -1;
int   __gl_leap_seconds_support          = 0;

int   __gnat_binder_ss_count             = 0;
int   __gnat_default_ss_pool             = 0;
int   __gnat_default_ss_size             = 0;
