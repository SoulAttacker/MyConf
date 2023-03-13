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


;; package: kaolin-themes
;; (use-package kaolin-themes
;;   ;; :config
;;   ;; (load-theme 'kaolin-valley-light t)
;;   ;; (kaolin-treemacs-theme))
;;   :ensure nil)

(use-package solo-jazz-theme
  :ensure nil)
;;   :config
;;   (load-theme 'solo-jazz t))

(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-one-light t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

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
  :init
  (setq dashboard-startup-banner 'logo
        dashboard-banner-logo-title "Welcome to SoulWalker's Emacs! Love ya~"
        dashboard-center-content t
        dashboard-show-shortcuts t
        dashboard-set-file-icons t
        dashboard-set-navigator t

        dashboard-items '((recents . 10)
                          (bookmarks . 5)
                          (projects . 5))
        )
  (dashboard-setup-startup-hook)
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
;;; init-ui.el ends here
