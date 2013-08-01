AC_DEFUN([GC_CHECK_PROG], [
  AC_PATH_PROG(m4_toupper(AS_TR_SH([$1])), $1, nocommand)
  if test "$m4_toupper(AS_TR_SH([$1]))" = "nocommand"; then
    AC_MSG_WARN([$1 does not exist or is not in search path])
    AC_MSG_ERROR([Aborting configure due to missing $1])
  fi
])
