;;; init-xenops.el --- xenops configuration          -*- lexical-binding: t; -*-

;; Copyright (C) 2023  soulwalker

;; Author: soulwalker <soulwalker@soulwalkerdeMac-Studio.local>
;; Keywords: xenops

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


(use-package xenops
  :hook (latex-mode . xenops-mode)
  :config
  (setq org-preview-latex-process-alist
        '((dvisvgm
		   :programs ("xelatex" "dvisvgm")
		   :description "xdv > svg"
		   :image-input-type "xdv"
		   :image-output-type "svg"
		   :image-size-adjust (1.7 . 1.5)
		   :latex-compiler ;; Default `xelatex' as the process previewing LaTeX fragments
		   ("xelatex -no-pdf -interaction nonstopmode -output-directory %o %f")
		   :image-converter ;; Set `dvisvgm' with --exact option
		   ("dvisvgm %f -e -n -b min -c %S -o %O")))))

(provide 'init-xenops)
;;; init-xenops.el ends here
