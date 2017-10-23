(require 'fill-column-indicator)

(setq fci-rule-width 1)
(setq fci-rule-color "#222222")
(setq-default fci-rule-column 80)
(setq fci-handle-truncate-lines nil)

(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)
(defun auto-fci-mode (&optional unused)
  (if (> (window-width) fci-rule-column)
    (fci-mode 1)
    (fci-mode 0))
  )

(add-hook 'after-change-major-mode-hook 'auto-fci-mode)
(add-hook 'window-configuration-change-hook 'auto-fci-mode)

;; Add for ruby projects
;;(add-hook 'ruby-mode-hook 'fci-mode)

;; To turn on fci-mode automatically for all files, put the following line
;;(add-hook 'after-change-major-mode-hook 'fci-mode)

;;To enable fci-mode as a global minor mode, put the following code
;;(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
;;  (global-fci-mode 1)

(provide 'init-fill-column-indicator)
