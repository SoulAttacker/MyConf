(use-package treemacs
  :ensure t
  :config
  (setq treemacs-follow-mode t)
)

(use-package treemacs-evil
  :after treemacs-mode)

(provide 'init-treemacs)
