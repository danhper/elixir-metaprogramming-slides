#ifdef DEBUG_BUILD
  #define DEBUG(x) fprintf(stderr, x)
#else
  #define DEBUG(x) do {} while (0)
#endif
