;; init-basic.el --- default configurations.	-*- lexical-binding: t -*-

;;; Commentary:
;;
;; default configurations.
;;


;;; Code:

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

;; show line number when in prog-mode
(add-hook 'prog-mode-hook 'display-line-numbers-mode)


;; backup
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
    (setq mac-option-modifier 'alt)
    (global-set-key (kbd "M-c") 'kill-ring-save) ; ⌘-c = Copy
    (global-set-key (kbd "M-v") 'yank) ; ⌘-v = Paste
    (global-set-key (kbd "M-z") 'undo) ; ⌘-z = Undo
    (global-set-key (kbd "≈") 'execute-extended-command)) ; Replace ≈ with whatever your option-x produces)

;; replace yes-or-no with y-or-n
(defalias 'yes-or-no-p 'y-or-n-p)

;; confirm to exit emacs
;; (add-hook 'kill-emacs-query-functions
;;           (lambda () (y-or-n-p "Do you really want to exit Emacs? "))
;;           'append)

(provide 'init-basic)
