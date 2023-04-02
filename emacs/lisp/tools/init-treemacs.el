(use-package treemacs
  :defer t
  :config
  (setq treemacs-follow-mode t)
)

(use-package treemacs-evil
  :after treemacs-mode)

(provide 'init-treemacs)
