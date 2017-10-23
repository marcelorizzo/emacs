(require 'flycheck)

(add-hook 'after-init-hook #'global-flycheck-mode)
(global-flycheck-mode)

(provide 'init-flycheck)
