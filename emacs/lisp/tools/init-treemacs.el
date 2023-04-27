;;; init-treemacs.el --- treemacs configuration      -*- lexical-binding: t; -*-

;; Copyright (C) 2023  soulwalker

;; Author: soulwalker <soulwalker@soulwalkerdeMac-Studio.local>
;; Keywords: treemacs

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

;;

;;; Code:


(use-package treemacs
  :defer t
  :config
  (setq treemacs-follow-mode t))

(use-package treemacs-evil
  :after treemacs)

;; (use-package treemacs-devicons
;;   :after treemacs
;;   :straight (treemacs-devicons
;;              :type git :host github :repo "rainstormstudio/treemacs-devicons")
;;   :config
;;   (treemacs-load-theme "devicons")
;; 
;;   ;; dired
;;   (defun treemacs-icons-dired--display ()
;;     "Display the icons of files in a Dired buffer."
;;     (when (and ;;(display-graphic-p)
;;            (not treemacs-icons-dired-displayed)
;;            dired-subdir-alist)
;;       (setq-local treemacs-icons-dired-displayed t)
;;       (setq-local treemacs-icons (treemacs-theme->gui-icons treemacs--current-theme))
;;       (pcase-dolist (`(,path . ,pos) dired-subdir-alist)
;;         (treemacs-icons-dired--display-icons-for-subdir path pos))))
;; 
;;   )

(provide 'init-treemacs)
;;; init-treemacs.el ends here
