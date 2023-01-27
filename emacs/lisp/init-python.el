(use-package python-mode
  :ensure t
  :hook (python-mode . lsp-deferred)
  :config
  (setq python-indent-offset 4
        python-sort-imports-on-save t))


(provide 'init-python)
