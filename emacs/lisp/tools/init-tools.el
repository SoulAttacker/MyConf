;;; init-tools.el --- tools module                   -*- lexical-binding: t; -*-

;; Copyright (C) 2023  soulwalker

;; Author: soulwalker
;; Keywords: whichkey, evil, treemacs, format-all, projectile, pdf-tools, vterm, general, ivy

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

;; tools module.

;;; Code:

(require 'init-whichkey)
(require 'init-magit)
(require 'init-evil)
(require 'init-treemacs)
(require 'init-format-all)
(require 'init-projectile)
(require 'init-pdf-tools)
(require 'init-vterm)
(require 'init-avy)
(require 'init-highlight)
(require 'init-auto-save)

(require 'init-general)
(require 'init-ivy)
(require 'init-prescient)
;; (require 'init-eaf)
(require 'init-xenops)

(provide 'init-tools)
;;; init-tools.el ends here
