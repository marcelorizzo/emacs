;;; init=packages.el --- List and management of my packages

;; That file contains my-packages list and a dolist function that install each package
;; This idea of managing packages was stolen from: https://github.com/rranelli/emacs-dotfiles

(require 'package)

;;(add-to-list 'package-archives
;;             '("melpa" . "https://melpa.org/packages/"))
;;(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
;;  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

;;(add-to-list 'package-archives
;;             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)


(defvar my-packages
  '(
      ac-inf-ruby
      ac-php
;;    ace-window
      async
      auto-complete
;;    auto-package-update
;;    avy
      bundler
      company
;;    company-inf-ruby
;;    company-emoji
;;    column-marker
      dash
      dash-functional
;;    dash-at-point
;;    discover-my-major
;;    easy-kill
      eshell
;;    expand-region
      f
      fill-column-indicator
;;    floobits
      flycheck
;;    flymake-ruby
;;    git-gutter
;;    git-timemachine
      guide-key
      helm
;;    helm-ag
      helm-bundle-show
      helm-flycheck
      helm-robe
      helm-projectile
      highlight-indentation
      indent-guide
      inf-ruby
;;    ido-vertical-mode
      magit
      neotree
;;    on-screen
      php-mode
      popup
      projectile
      projectile-rails
      rake
      rbenv
;;    restclient
      robe
      rspec-mode
      ruby-end
      ruby-test-mode
      ruby-tools
      rubocop
      rvm
      smartparens
      undo-tree
;;    wakatime-mode
      web-mode
;     ws-butler
      yaml-mode
      yasnippet
      elixir-yasnippets
)
  "A list of packages to be installed at application lauch.")

(setq packaged-contents-refreshed-p nil)
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (condition-case ex
  (package-install p)
  ('error (if packaged-contents-refreshed-p
      (error ex)
    (package-refresh-contents)
    (setq packaged-contents-refreshed-p t)
    (package-install p))))))

(provide 'init-packages)
;;; init-packages ends here
