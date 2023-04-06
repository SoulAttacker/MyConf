
(use-package format-all
  :init
  (add-hook 'prog-mode-hook 'format-all-mode)
  :config
  (setq format-all-show-errors 'never))

(provide 'init-format-all)
