;;; init-prescient.el --- prescient configuration    -*- lexical-binding: t; -*-

;; Copyright (C) 2023  soulwalker

;; Author: soulwalker <soulwalker@soulwalkerdeMac-Studio.local>
;; Keywords: prescient, company, ivy

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

;; prescient configuration integrate with ivy and company

;;; Code:

(use-package prescient)

(use-package company-prescient
  :ensure t
  :config
  (company-prescient-mode))

(use-package ivy-prescient
  :ensure t
  :config
  (ivy-prescient-mode))


(provide 'init-prescient)
;;; init-prescient.el ends here
