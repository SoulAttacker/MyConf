;;; init-ui.el --- ui configuration                  -*- lexical-binding: t; -*-

;; Copyright (C) 2023  soulwalker

;; Author: soulwalker <soulwalker@soulwalkerdeMac-Studio.local>
;; Keywords: dashboard, theme, modeline, tabs, icons, indent

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; ui basic configuration

;;; Code:

(require 'cl-macs)

;; disable startup
(setq inhibit-startup-message t)

;; disable tool-bar
(tool-bar-mode -1)

;; disable scroll-bar
(scroll-bar-mode -1)

;; scroll mode
(setq scroll-step 1
      scroll-margin 0)

;; disable menu-bar
(menu-bar-mode 1)

;; title bar

(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))

;; (setq custom-theme-directory (concat user-emacs-directory "lisp/themes/soulwalker-theme"))
;; (add-to-list load-path (concat user-emacs-directory "soulwalker-dark-theme.el"))

;; package: all-the-icons
(use-package all-the-icons
  :ensure t
  :if (display-graphic-p))

;; package: dashboard
(use-package dashboard
  :ensure t
  :init
  (add-hook 'after-init-hook 'dashboard-refresh-buffer)
  :config
  (setq dashboard-startup-banner (concat user-emacs-directory "etc/logo_scale.png")
        dashboard-banner-logo-title "Welcome to SoulWalker's Emacs! Love ya~"
        dashboard-center-content t
        dashboard-show-shortcuts t
        dashboard-set-file-icons t

        dashboard-items '((recents . 10)
                          (projects . 5))
        )

  (dashboard-setup-startup-hook)
  )

;; package: centaur-tabs
(use-package centaur-tabs
  :hook (after-init . centaur-tabs-mode)
  :init
  (setq centaur-tabs-enable-key-bindings t)
  :config
  (centaur-tabs-enable-buffer-reordering)
  (setq centaur-tabs-style "rounded"
        centaur-tabs-height 16
        centaur-tabs-set-icons t
        centaur-tabs-set-bar 'under
        centaur-tabs-show-count nil
        centaur-tabs-show-new-tab-button nil
        centaur-tabs-plain-icons t
        x-underline-at-descent-line t
        centaur-tabs-left-edge-margin nil
        centaur-tabs-adjust-buffer-order 'left)

  (centaur-tabs-change-fonts "CaskaydiaCove Nerd Font" 130)
  (centaur-tabs-mode t)
  :hook
  (dashboard-mode . centaur-tabs-local-mode)
  (term-mode . centaur-tabs-local-mode)
  (calendar-mode . centaur-tabs-local-mode)
  (org-agenda-mode . centaur-tabs-local-mode))

;; package: highlight-indent-guide
(use-package highlight-indent-guides
  :ensure t
  :hook ((prog-mode . highlight-indent-guides-mode))
  :init
  (setq highlight-indent-guides-method 'character
        highlight-indent-guides-reponsive 'top))

(use-package myron-themes
  :straight (myron-themes :host github :repo "neeasade/myron-themes"))

;; (use-package oxocarbon-emacs
;;   :straight (oxocarbon-emacs :host github :repo "konrad1977/oxocarbon-emacs"))

(use-package modus-themes
  :ensure t
  :init
  (setq modus-themes-italic-constructs t
        modus-themes-bold-constructs t
        modus-themes-variable-pitch-ui t
        modus-themes-mixed-fonts t
        modus-themes-tabs-accented t
        modus-themes-org-blocks 'gray-background)

  ;; common
  (defconst modus-vivendi-palette-overrides
    '(
      ;; basic values
      (bg-main       "#101010")))

  (setq modus-themes-common-palette-overrides

        ;; line number
        '((fg-line-number-inactive "gray50")
          (fg-line-number-active fg-main)
          (bg-line-number-inactive unspecified)
          (bg-line-number-active unspecified)

          ;; tab
          (bg-tab-bar bg-main)
          (bg-tab-current bg-main)
          (bg-tab-other bg-main)))

  (setq global-hl-line-mode t))
;; (load-theme 'modus-vivendi t))

(add-to-list 'custom-theme-load-path (concat user-emacs-directory "lisp/themes"))
(load-theme 'soulwalker-dark t)


;; (use-package naga-theme)
;;   :config
;;     (load-theme 'naga t))

(use-package awesome-tray
  :straight (awesome-tray
             :type git :host github :repo "manateelazycat/awesome-tray")
  :hook (after-init . awesome-tray-mode)
  :config
  (awesome-tray-mode 1)
  ;; (setq awesome-tray-active-modules '("evil" "location" "belong" "file-path" "mode-name" "date" "Code is Art!"))
  (defun slogon-info ()
    "Code is Art!")
  (add-to-list 'awesome-tray-module-alist
               '("slogon" . (slogon-info awesome-tray-pink-face)))
  (setq awesome-tray-active-modules '("location" "belong" "file-path" "mode-name" "date" "slogon"))
  )


(use-package composite
  :ensure nil
  :init (defvar composition-ligature-table (make-char-table nil))
  :hook (((prog-mode
           conf-mode nxml-mode markdown-mode help-mode
           shell-mode eshell-mode term-mode vterm-mode)
          . (lambda () (setq-local composition-function-table composition-ligature-table))))
  :config
  ;; support ligatures, some toned down to prevent hang
  (let ((alist
         '((33  . ".\\(?:\\(==\\|[!=]\\)[!=]?\\)")
           (35  . ".\\(?:\\(###?\\|_(\\|[(:=?[_{]\\)[#(:=?[_{]?\\)")
           (36  . ".\\(?:\\(>\\)>?\\)")
           (37  . ".\\(?:\\(%\\)%?\\)")
           (38  . ".\\(?:\\(&\\)&?\\)")
           (42  . ".\\(?:\\(\\*\\*\\|[*>]\\)[*>]?\\)")
           ;; (42 . ".\\(?:\\(\\*\\*\\|[*/>]\\).?\\)")
           (43  . ".\\(?:\\([>]\\)>?\\)")
           ;; (43 . ".\\(?:\\(\\+\\+\\|[+>]\\).?\\)")
           (45  . ".\\(?:\\(-[->]\\|<<\\|>>\\|[-<>|~]\\)[-<>|~]?\\)")
           ;; (46 . ".\\(?:\\(\\.[.<]\\|[-.=]\\)[-.<=]?\\)")
           (46  . ".\\(?:\\(\\.<\\|[-=]\\)[-<=]?\\)")
           (47  . ".\\(?:\\(//\\|==\\|[=>]\\)[/=>]?\\)")
           ;; (47 . ".\\(?:\\(//\\|==\\|[*/=>]\\).?\\)")
           (48  . ".\\(?:x[a-zA-Z]\\)")
           (58  . ".\\(?:\\(::\\|[:<=>]\\)[:<=>]?\\)")
           (59  . ".\\(?:\\(;\\);?\\)")
           (60  . ".\\(?:\\(!--\\|\\$>\\|\\*>\\|\\+>\\|-[-<>|]\\|/>\\|<[-<=]\\|=[<>|]\\|==>?\\||>\\||||?\\|~[>~]\\|[$*+/:<=>|~-]\\)[$*+/:<=>|~-]?\\)")
           (61  . ".\\(?:\\(!=\\|/=\\|:=\\|<<\\|=[=>]\\|>>\\|[=>]\\)[=<>]?\\)")
           (62  . ".\\(?:\\(->\\|=>\\|>[-=>]\\|[-:=>]\\)[-:=>]?\\)")
           (63  . ".\\(?:\\([.:=?]\\)[.:=?]?\\)")
           (91  . ".\\(?:\\(|\\)[]|]?\\)")
           ;; (92 . ".\\(?:\\([\\n]\\)[\\]?\\)")
           (94  . ".\\(?:\\(=\\)=?\\)")
           (95  . ".\\(?:\\(|_\\|[_]\\)_?\\)")
           (119 . ".\\(?:\\(ww\\)w?\\)")
           (123 . ".\\(?:\\(|\\)[|}]?\\)")
           (124 . ".\\(?:\\(->\\|=>\\||[-=>]\\||||*>\\|[]=>|}-]\\).?\\)")
           (126 . ".\\(?:\\(~>\\|[-=>@~]\\)[-=>@~]?\\)"))))
    (dolist (char-regexp alist)
      (set-char-table-range composition-ligature-table (car char-regexp)
                            `([,(cdr char-regexp) 0 font-shape-gstring]))))
  (set-char-table-parent composition-ligature-table composition-function-table))


(provide 'init-ui)
;;; init-ui.el ends here
