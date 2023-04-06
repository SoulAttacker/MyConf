;;; init-quickrun.el --- quickrun configuration      -*- lexical-binding: t; -*-

;; Copyright (C) 2023  soulwalker

;; Author: soulwalker <soulwalker@soulwalkerdeMac-Studio.local>
;; Keywords: quickrun

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

(use-package quickrun
  :config
  ;; Use this parameter as C++ default
  (quickrun-add-command "python"
    '((:command . "python")
      (:mode    . python-mode)
      (:exec    . ("%c %s"))
      (:default "python"))))


(provide 'init-quickrun)
;;; init-quickrun.el ends here
