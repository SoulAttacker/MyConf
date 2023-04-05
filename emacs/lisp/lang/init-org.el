;;; init-org.el --- org configuration                -*- lexical-binding: t; -*-

;; Copyright (C) 2023  soulwalker

;; Author: soulwalker(use-package org <soulwalker@soulwalkerdeMac-Studio.local>
;; Keywords: org, toc-org

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

(use-package org
  :mode ("\\.[oO][rR][gG]\\'" . org-mode)
  :config

  ;; pretty
  (require 'init-consts)
  (add-hook 'org-mode-hook 'soulwalker-prettify-org-symbols-alist)

  ;; code indent
  (setq org-src-preserve-indentation nil
        org-edit-src-content-indentation 0)

  ;; kind ui
  (use-package org-bullets
    :hook (org-mode . org-bullets-mode))

  (use-package org-superstar
    :hook (org-mode . org-superstar-mode)
    :config
    (setq org-superstar-remove-leading-stars t
          org-superstar-headline-bullets-list '("◉" "○" "●" "○" "●" "○" "●")))

  (setq org-startup-with-inline-images t
        org-hide-emphasis-markers t
        org-pretty-entities t)

  ;; set babel lang
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-lisp . t)
     (shell . t)
     (python . t)
     (clojure . t)))
  (require 'init-clojure)
  (setq org-babel-clojure-backend 'cider)

  ;; haven't to confirm y-or-n
  (setq org-confirm-babel-evaluate nil)

  ;; short alist
  (require 'org-tempo)
  (add-to-list 'org-structure-template-alist '("el" . "src emacs-lisp"))
  (add-to-list 'org-structure-template-alist '("py" . "src python"))
  (add-to-list 'org-structure-template-alist '("clj" . "src clojure")))

;; (use-package org-modern
;;   :hook (org-mode . org-modern-mode)
;;   )


(use-package org-roam
  :ensure t
  :init
  (setq org-roam-v2-ack t)
  :custom
  (org-roam-directory (file-truename "~/org-roam/"))
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n g" . org-roam-graph)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n c" . org-roam-capture)
         ;; Dailies
         ("C-c n j" . org-roam-dailies-capture-today))
  :config
  (org-roam-setup)
)



(use-package toc-org
  :hook (org-mode . toc-org-mode))

(provide 'init-org)
;;; init-org.el ends here
