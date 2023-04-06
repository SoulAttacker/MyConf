;;; oxocarbon-theme.el --- oxocarbon personal emacs  -*- lexical-binding: t; -*-

;; Copyright (C) 2023  soulwalker

;; Author: soulwalker <soulwalker@soulwalkerdeMac-Studio.local>
;; Keywords: oxocarbon

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

(require 'autothemer)


(autothemer-deftheme
 oxocarbon "A theme based on oxocarbon amazing color scheme"

 ((((class color) (min-colors #xFFFFFF))        ; col 1 GUI/24bit
   ((class color) (min-colors #xFF)))           ; col 2 Xterm/256

  ;; Define our color palette
  (highlight-high   "#363636" "#d7d7ff")
  (highlight-med    "#262626" "#d7d7ff")
  (highlight-low    "#21202e" "#d7d7ff")
  (iris             "#be95ff" "#d7d7ff")
  (dark-iris        "#17121F" "#d7d7ff")
  (foam             "#82cfff" "#00d7ff")
  (dark-foam        "#142027" "#00d7ff")
  (green            "#42be65" "#00d7ff")
  (pine             "#08bdba" "#afffff")
  (rose             "#f5e0dc" "#ffffff")
  (gold             "#f6c177" "#ffd7af")
  (dark-gold        "#211A10" "#ffd7af")
  (pink             "#FF74B8" "#ffd7af")
  (love             "#FF0065" "#ff87af")
  (dark-love        "#27000F" "#ff87af")
  (text             "#FFFFFF" "#ffffff")
  (subtle           "#dde1e6" "#ffffff")
  (unmuted          "#bbc1c6" "#686868")
  (muted            "#525252" "#ffffff")
  (dark-green       "#03302F" "#F00000")
  (overlay          "#292929" "#ffffff")
  (surface          "#161616" "#ffffff")
  (base             "#131313" "#ffffff"))

 ;; Customize faces
 (
  (default                              (:background surface :foreground text))
  (border                               (:foreground muted))
  (bookmark-face                        (:foreground love))
  (button                               (:foreground foam))
  (child-frame                          (:foreground base))
  (child-frame-border                   (:foreground base))
  (cursor                               (:background pine :foreground base))
  (error                                (:foreground love))
  (link                                 (:foreground foam))
  (fringe                               (:foreground overlay))
  (file-name-shadow                     (:foreground muted))
  (glyph-face                           (:background love :foreground muted))
  (glyphless-char                       (:foreground muted))
  (header-line                          (:background base :foreground rose :weight 'semi-bold :italic t))
  (highlight                            (:background base :foreground foam :distant-foreground base))
  (hl-line                              (:background dark-green))
  (homoglyph                            (:foreground foam))
  (line-number                          (:foreground highlight-high))
  (line-number-current-line             (:background overlay :foreground iris :bold t))
  (match                                (:background gold :foreground base))
  (menu                                 (:foreground rose))
  (fill-column-indicator                (:foreground overlay))
  (mode-line                            (:background base :foreground muted))
  (mode-line-inactive                   (:background overlay))
  (mode-line-active                     (:foreground muted :background base))
  (mode-line-highlight                  (:foreground rose))
  (mode-line-buffer-id                  (:foreground text :bold t))
  (numbers                              (:background gold))
  (region                               (:background text :foreground base))
  (tooltip                              (:background muted :foreground base))
  (shadow                               (:foreground muted))
  (success                              (:foreground pine))
  (vertical-border                      (:foreground muted))
  (warning                              (:foreground gold))
  (window-divider                       (:foreground overlay :background overlay))

  (whitespace-newline                   (:foreground muted))
  (whitespace-space                     (:foreground muted))
  (whitespace-trailing                  (:foreground base :background love))

  ;; ;; Font lock
  (font-lock-keyword-face               (:foreground pink :weight 'semi-bold))
  (font-lock-type-face                  (:foreground iris :weight 'semi-bold))
  (font-lock-builtin-face               (:foreground iris))
  (font-lock-function-name-face         (:foreground foam))
  (font-lock-variable-name-face         (:foreground rose))
  (font-lock-comment-face               (:foreground muted :italic t))
  (font-lock-comment-delimiter-face     (:foreground muted :italic t))
  (font-lock-doc-face                   (:foreground muted))
  (font-lock-string-face                (:foreground gold :italic t))
  (font-lock-warning-face               (:foreground gold))
  (font-lock-constant-face              (:foreground gold :bold t))
  (font-lock-regexp-grouping-backslash  (:foreground green :weight 'semi-bold))

  (font-lock-reference-face				(:foreground foam))
  (font-lock-negation-char-face         (:foreground love))
  (font-lock-doc-markup-face            (:foreground muted))
  (font-lock-preprocessor-face	   		(:foreground muted))

  (elisp-shorthand-font-lock-face       (:foreground gold))

  (highlight-operators-face             (:foreground love))
  (highlight-quoted-symbol              (:foreground rose))
  (highlight-numbers-face               (:foreground love))
  (highlight-symbol-face                (:background muted :foreground text))
  (info-xref                            (:foreground gold))

  (minibuffer-prompt-end                (:foreground love))
  (minibuffer-prompt                    (:foreground love))
  (epa-mark                             (:foreground love))
  (dired-mark                           (:foreground love))
  (dired-ignored                        (:background gold))

  (iedit-occurrence                     (:background foam :foreground base))
  (iedit-read-only-occurrence           (:background pine :foreground base))

  (trailing-rosewaterspace              (:background overlay))


  ;; facesssss

  ;; centaur tabs

  ;; tab bar
 (tab-bar-tab-ungrouped (:inherit ('shadow 'tab-bar-tab-inactive)))
 (tab-bar-tab-group-inactive (:inherit ('shadow 'tab-bar-tab-inactive)))
 (tab-bar-tab-group-current (:weight 'bold :box nil :inherit 'tab-bar-tab))
 (tab-bar-tab-inactive (:background unmuted :inherit 'tab-bar-tab))
 (tab-bar-bar base)

  (centaur-tabs-active-bar-face				(:background base :foreground text))
  (centaur-tabs-selected					(:background base :foreground text :bold t))
  (centaur-tabs-selected-modified			(:background base :foreground text))
  (centaur-tabs-modified-marker-selected	(:background base :foreground text))
  (centaur-tabs-close-selected				(:inherit 'centaur-tabs-selected))

  (centaur-tabs-unselected					(:background base :foreground muted))
  (centaur-tabs-unselected-modified			(:background base :foreground iris))
  (centaur-tabs-modified-marker-unselected	(:background base :foreground muted))
  (centaur-tabs-close-unselected			(:background base :foreground muted))

  (centaur-tabs-close-mouse-face			(:foreground love))
  (centaur-tabs-default						(:background base))
  (centaur-tabs-name-mouse-face				(:foreground foam :bold t))

  ))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))
(provide-theme 'oxocarbon)

;;; oxocarbon-theme.el ends here
