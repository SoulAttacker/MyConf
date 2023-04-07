;;; init-auto-save.el --- auto-save configuration    -*- lexical-binding: t; -*-

;; Copyright (C) 2023  soulwalker

;; Author: soulwalker <soulwalker@soulwalkerdeMac-Studio.local>
;; Keywords: auto-save

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

(use-package auto-save
  :straight (auto-save
             :type git :host github :repo "manateelazycat/auto-save")
  :hook after-init
  :config
  (auto-save-enable)
  (setq auto-save-silent t
        auto-save-delete-trailing-whitespace t))


(provide 'init-auto-save)
;;; init-auto-save.el ends here
