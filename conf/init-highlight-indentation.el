(require 'highlight-indentation)

;; Add for ruby projects
;;(add-hook 'ruby-mode-hook 'highlight-indentation-mode)

;; To turn on highlight-indentation-mode automatically for all files, put the following line
;;(add-hook 'after-change-major-mode-hook 'highlight-indentation-mode)
;;(add-hook 'after-change-major-mode-hook 'highlight-indentation-current-column-mode)

;;To enable highlight-indentation-mode as a global minor mode, put the following code
(define-globalized-minor-mode global-highlight-indentation-current-column-mode highlight-indentation-current-column-mode (lambda () (highlight-indentation-current-column-mode 1)))
 (global-highlight-indentation-current-column-mode 1)
(define-globalized-minor-mode global-highlight-indentation-current-column-mode  highlight-indentation-current-column-mode (lambda () (highlight-indentation-current-column-mode 1)))
 (global-highlight-indentation-current-column-mode 1)



(set-face-background 'highlight-indentation-face "#222222")
(set-face-background 'highlight-indentation-current-column-face "#222222")

(provide 'init-highlight-indentation)
