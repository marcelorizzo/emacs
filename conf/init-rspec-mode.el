(add-hook 'dired-mode-hook 'rspec-dired-mode)

(eval-after-load 'rspec-mode
 '(rspec-install-snippets))

(defadvice rspec-compile (around rspec-compile-around)
  "Use BASH shell for running the specs because of ZSH issues."
  (let ((shell-file-name "/bin/bash"))
    ad-do-it))

(setq-default rspec-use-rvm t)
(require 'rspec-mode)
(setq-default rspec-use-rvm t)

(provide 'init-rspec-mode)
