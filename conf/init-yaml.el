(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yml\\.example$" . yaml-mode))

(add-hook 'yaml-mode-hook 'linum-mode)

(provide 'init-yaml)
