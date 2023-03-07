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
  :if (display-graphic-p))

;; package: doom-modeline
(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode)
  :config
  (setq doom-modeline-height 1) ; optional
  (custom-set-faces
   '(mode-line ((t (:family "CaskaydiaCove Nerd Font" :height 0.9))))
   '(mode-line-active ((t (:family "CaskaydiaCove Nerd Font" :height 0.9)))) ; For 29+
   '(mode-line-inactive ((t (:family "CaskaydiaCove Nerd Font" :height 0.9)))))
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

;; package: centaur-tabs
(use-package centaur-tabs
  :ensure t
  :init
  (setq centaur-tabs-enable-key-bindings t)
  :config
  (setq centaur-tabs-style "rounded"
        centaur-tabs-height 32
        centaur-tabs-set-icons t
        centaur-tabs-show-new-tab-button t
        centaur-tabs-set-modified-marker t
        centaur-tabs-show-navigation-buttons t
        centaur-tabs-set-bar 'under
        centaur-tabs-show-count nil
        x-underline-at-descent-line t
        centaur-tabs-left-edge-margin nil)
  (centaur-tabs-mode t)
  :hook
  (dashboard-mode . centaur-tabs-local-mode)
  (term-mode . centaur-tabs-local-mode)
  (calendar-mode . centaur-tabs-local-mode)
  (org-agenda-mode . centaur-tabs-local-mode))

;; package: highlight-indent-guide
(use-package highlight-indent-guides
  :hook ((prog-mode . highlight-indent-guides-mode))
  :init
  (setq highlight-indent-guides-method 'character
        highlight-indent-guides-reponsive 'top))

(provide 'init-ui)
