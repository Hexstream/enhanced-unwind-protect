(cl:defpackage #:enhanced-unwind-protect
  (:nicknames #:e-unwind-protect)
  (:use #:cl)
  (:shadow #:unwind-protect)
  (:export #:unwind-protect))
