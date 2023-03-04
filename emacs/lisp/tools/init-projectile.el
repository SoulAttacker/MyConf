(use-package projectile
  :diminish projectile-mode
  :config
  (projectile-mode t)
  :custom
  ((projectile-completion-system 'ivy))
  :init
  (setq projectile-switch-project-action #'projectile-dired)
)

(use-package counsel-projectile
  :config (counsel-projectile-mode))

(provide 'init-projectile)
