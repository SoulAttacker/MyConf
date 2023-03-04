(use-package docstr-mode
  :config
  (add-hook 'actionscript-mode-hook (lambda () (docstr-mode 1)))
  (setq docstr-python-style 'google))

(provide 'init-ts-docstr)
