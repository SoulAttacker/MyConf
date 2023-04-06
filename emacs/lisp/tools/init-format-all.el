
(use-package format-all
  :hook (prog-mode . format-all-mode)
  :config
  (setq format-all-show-errors 'never))

(provide 'init-format-all)
