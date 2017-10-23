;;Starts on fullscreen mode
(run-with-idle-timer 0.1 nil 'toggle-frame-fullscreen)

;; Starts maximized
;;(custom-set-variables
;;   '(initial-frame-alist (quote ((fullscreen . maximized)))))

(setq
 ;; default directory
 default-directory (concat (getenv "HOME") "/Workspace/projects/paas")
 ;; disable backup files
 make-backup-files nil
 auto-save-default nil
 backup-inhibited t
 ;; If a frame alredy opened, use it!
 display-buffer-reuse-frames t
)

;; make indentation commands use space only
(setq-default indent-tabs-mode nil)

;; dired configurations
(put 'dired-find-file-other-buffer 'disabled t)

;; whitespace display
(global-whitespace-mode)
(setq whitespace-global-modes
      '(not magit-mode git-commit-mode))
(setq whitespace-style '(face trailing tabs))
(global-set-key (kbd "C-RET") 'whitespace-cleanup) ; 【Ctrl+Enter】
(global-set-key (kbd "C-<return>") 'whitespace-cleanup) ; 【Ctrl+Enter】
(global-set-key (kbd "M-RET") 'whitespace-cleanup-region) ; 【Meta+Enter】

(provide 'init-general)

;;(add-hook 'after-init-hook 'inf-ruby -switch-setup)

(defalias 'redo 'undo-tree-redo)
(global-set-key (kbd "C-z") 'undo) ; 【Ctrl+z】

(global-set-key (kbd "C-S-z") 'redo) ; 【Ctrl+Shift+z】;  Mac style

(global-set-key (kbd "C-y") 'redo) ; 【Ctrl+y】; Microsoft Windows style
