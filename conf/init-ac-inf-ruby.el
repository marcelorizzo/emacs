(require 'ac-inf-ruby)

(require 'ac-inf-ruby) ;; when not installed via package.el
    (eval-after-load 'auto-complete
      '(add-to-list 'ac-modes 'inf-ruby-mode))
    (add-hook 'inf-ruby-mode-hook 'ac-inf-ruby-enable)

(eval-after-load 'inf-ruby '
    '(define-key inf-ruby-mode-map (kbd "TAB") 'auto-complete))

(provide 'init-ac-inf-ruby)
