(require 'inf-ruby)

(autoload 'inf-ruby "inf-ruby" "Run an inferior Ruby process" t)
(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)

(add-hook 'compilation-filter-hook 'inf-ruby-auto-enter)

(provide 'init-inf-ruby)
