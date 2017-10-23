(require 'bundler)

(defun asok/bundle--around (fun &rest args)
    "Run FUN from the project root."
    (projectile-with-default-dir (default-project-source)
                                 (apply fun args)))

(advice-add 'bundle-command :around #'asok/bundle--around)

(provide 'init-bundler)
