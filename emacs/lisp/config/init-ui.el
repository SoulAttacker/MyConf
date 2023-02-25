;; init-ui.el --- ui configurations.	-*- lexical-binding: t -*-

;;; Commentary:
;;
;; ui configurations.
;;


;;; Code:

;; package: dashboard
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)

  (setq dashboard-banner-logo-title "Welcome to SoulWalker's Emacs! Love ya~")

  (setq dashboard-center-content t)
  
  (setq dashboard-show-shortcuts nil)
)

(provide 'init-ui)
