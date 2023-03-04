;; init-ui.el --- ui configurations.	-*- lexical-binding: t -*-

;;; Commentary:
;;
;; ui configurations.
;;


;;; Code:

;; package: kaolin-themes
;; (use-package kaolin-themes
;;   :config
;;   (load-theme 'kaolin-valley-light t)
;;   (kaolin-treemacs-theme))

(use-package solo-jazz-theme
  :ensure t
  :config
  (load-theme 'solo-jazz t))

;; package: all-the-icons
(use-package all-the-icons
  :ensure t)

;; package: doom-modeline
(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode)
  )

;; package: dashboard
(use-package dashboard
  :ensure t
  :init
  (add-hook 'after-init-hook 'dashboard-refresh-buffer)
  :config
  (setq dashboard-startup-banner 'logo)
  (dashboard-setup-startup-hook)

  (setq dashboard-banner-logo-title "Welcome to SoulWalker's Emacs! Love ya~")

  (setq dashboard-center-content t)
  
  (setq dashboard-show-shortcuts nil)

  (setq dashboard-set-file-icons t)

  (setq dashboard-set-navigator t)
)

(provide 'init-ui)
