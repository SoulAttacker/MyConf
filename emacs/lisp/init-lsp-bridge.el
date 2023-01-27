(add-to-list 'load-path "~/.config/emacs/elpa/lsp-bridge/")

(use-package posframe
  :ensure t)

(use-package markdown-mode
  :ensure t)

(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1))


(require 'lsp-bridge)
(global-lsp-bridge-mode)



(provide 'init-lsp-bridge)
