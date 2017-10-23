(require 'elixir-yasnippets)


(provide 'init-elixir-yasnippets)


(unless (package-installed-p 'elixir-mode)
  (package-install 'elixir-mode))
