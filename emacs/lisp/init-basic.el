;; init basic 

;;;;;;;;;;;;;;;;;;
;; encoding setup
;;;;;;;;;;;;;;;;;;

;; encoding: utf-8
; (prefer-coding-system 'utf-8)
; (set-default-coding-systems 'utf-8)
; (set-terminal-coding-system 'utf-8)
; (set-keyboard-coding-system 'utf-8)
; (setq default-buffer-line-file-coding-system 'utf-8)
; (setq gc-cons-threshold most-positive-fixnum)

;;;;;;;;;;;;;;;;;;
;; ui setup
;;;;;;;;;;;;;;;;;;

;; disable startup
(setq inhibit-startup-message t)

;; disable tool-bar
(tool-bar-mode -1)

;; disable scroll-bar
(scroll-bar-mode -1)

;; disable menu-bar
(menu-bar-mode 1)

;; title bar
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))

;; set nu
(global-display-line-numbers-mode t)
(dolist (mode '(org-mode-hook
                shell-mode-hook
                term-mode-hook
                eshell-mode-hook))
  (add-hook mode (lambda() (dispaly-line-numbers-mode 0))))



;; backup
;; (setq backup-directory-alist (quote (("." . "~/.emacs-backups"))))
;; disable file backup & auto save
(setq make-backup-files nil auto-save-default nil)

;; disable locking file
(setq create-lockfiles nil)

;; always load newest file
(setq load-prefer-newer t)

;; disable bell
(setq ring-bell-function 'ignore blink-cursor-mode nil)

;; font
(set-face-attribute 'default nil :font "PTMono Nerd Font 18")


;; pair complementation
(electric-pair-mode 1)

;; pair highlight
(show-paren-mode 1)

;; tab
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; os setting 
(defconst *is-mac* (eq system-type 'darwin))
(defconst *is-linux* (eq system-type 'gnu/linux))
(defconst *is-windows* (or (eq system-type 'ms-dos) (eq system-type 'windows-nt)))

;; replace command with meta in mac
(when *is-mac* 
    (setq mac-command-modifier 'meta)
    (setq mac-option-modifier 'none))

;; replace yes-or-no with y-or-n
(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'init-basic)
