(eval-when-compile (require 'cl))
(defvar eshell-path-env)
(defvar persp-mode)
(defvar perspectives-hash)
(declare-function persp-switch "perspective" (name))

(require 'rvm)
(rvm-use-default) ;; use rvm's default ruby for the current Emacs session

(provide 'init-rvm)
