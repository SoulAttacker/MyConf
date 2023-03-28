;;; init-prog.el --- prog-mode configuration         -*- lexical-binding: t; -*-

;; Copyright (C) 2023  soulwalker

;; Author: soulwalker <soulwalker@soulwalkerdeMac-Studio.local>
;; Keywords: prog-mode

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

;; some basic or pretty configuration for prog-mode

;;; Code:

(require 'init-utils)

(use-package prog-mode
  :ensure nil
  :hook (prog-mode . prettify-symbols-mode)
  :init
  (setq-default prettify-symbols-alist soulwalker-prettify-symbols-alist)
  (setq prettify-symbols-unprettify-at-point 'right-edge))

(use-package treesit-auto
  :hook (after-init-hook . global-treesit-auto-mode)
  :init (setq treesit-auto-install 'prompt))

;; package: flycheck
;; (use-package flycheck
;;   :init
;;   (add-hook 'after-init-hook 'flycheck-mode))

(use-package flymake
  :ensure nil
  :diminish (flymake " FlayMake.")
  :hook (prog-mode . flymake-mode))


(use-package smart-tab
  :hook (prog-mode . smart-tab-mode))

(provide 'init-prog)
;;; init-prog.el ends here
