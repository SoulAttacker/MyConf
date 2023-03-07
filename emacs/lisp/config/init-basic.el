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
(defun font-installed-p (font-name)
  "Check if font with FONT-NAME is available."
  (find-font (font-spec :name font-name)))

(defun setup-fonts ()
  "Setup fonts."
  (when (display-graphic-p)
    ;; Set default font
    (cl-loop for font in '("CaskaydiaCove Nerd Font" "Fira Code" "Jetbrains Mono"
                           "SF Mono" "Hack" "Source Code Pro" "Menlo"
                           "Monaco" "DejaVu Sans Mono")
             when (font-installed-p font)
             return (set-face-attribute 'default nil
                                        :family font
                                        :height 150))

    ;; Set mode-line font
    ;; (cl-loop for font in '("Menlo" "SF Pro Display" "Helvetica")
    ;;          when (font-installed-p font)
    ;;          return (progn
    ;;                   (set-face-attribute 'mode-line nil :family font :height 120)
    ;;                   (when (facep 'mode-line-active)
    ;;                     (set-face-attribute 'mode-line-active nil :family font :height 120))
    ;;                   (set-face-attribute 'mode-line-inactive nil :family font :height 120)))

    ;; Specify font for all unicode characters
    (cl-loop for font in '("Segoe UI Symbol" "Symbola" "Symbol")
             when (font-installed-p font)
             return (if (< emacs-major-version 27)
                        (set-fontset-font "fontset-default" 'unicode font nil 'prepend)
                      (set-fontset-font t 'symbol (font-spec :family font) nil 'prepend)))

    ;; Emoji
    (cl-loop for font in '("Noto Color Emoji" "Apple Color Emoji" "Segoe UI Emoji")
             when (font-installed-p font)
             return (cond
                     ((< emacs-major-version 27)
                      (set-fontset-font "fontset-default" 'unicode font nil 'prepend))
                     ((< emacs-major-version 28)
                      (set-fontset-font t 'symbol (font-spec :family font) nil 'prepend))
                     (t
                      (set-fontset-font t 'emoji (font-spec :family font) nil 'prepend))))

    ;; Specify font for Chinese characters
    (cl-loop for font in '("WenQuanYi Micro Hei" "PingFang SC" "Microsoft Yahei" "STFangsong")
             when (font-installed-p font)
             return (progn
                      (setq face-font-rescale-alist `((,font . 1.3)))
                      (set-fontset-font t '(#x4e00 . #x9fff) (font-spec :family font))))))

(setup-fonts)


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
