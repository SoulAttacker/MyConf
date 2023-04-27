;;; docstr-generator.el --- docstr generator         -*- lexical-binding: t; -*-

;; Copyright (C) 2023  soulwalker

;; Author: soulwalker
;; Keywords: docstr

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

(require 'treesit)

(defgroup docstr-generator nil
  "Docstring generator."
  :group 'docstr-generator)

(defcustom docstr-c-style 'google
  "C style"
  :group 'docstr-generator)

(defun docstr-generator-insert ()
  "Insert docstring"
  (interactive)

  (message (treesit-parse-string (thing-at-point 'line)))
)

(provide 'docstr-generator)
;;; docstr-generator.el ends here