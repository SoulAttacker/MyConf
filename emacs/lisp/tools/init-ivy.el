;; init-ivy.el --- ivy configurations. -*- lexical-binding: t -*-

;;; Commentary:
;;
;; ivy configuration.
;;


;;; Code:

;; package :ivy
(use-package ivy
  :ensure t
  :bind (("C-s" . swiper)
         :map ivy-minibuffer-map
         ("C-l" . ivy-alt-done)
         ("C-j" . ivy-next-line)
         ("C-k" . ivy-previous-line)
         :map ivy-switch-buffer-map
         ("C-k" . ivy-previous-line)
         ("C-l" . ivy-done)
         ("C-d" . ivy-switch-buffer-kill)
         :map ivy-reverse-i-search-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode nil)
  (setq ivy-count-format "(%d/%d) "))

;; package: counsel
(use-package counsel
  :after ivy
  :bind (("M-x" . counsel-M-x)
         ("C-x b" . counsel-ibuffer)
         ("C-x C-f" . counsel-find-file)))

;; package :swiper
(use-package swiper
  :after ivy)

;; package: ivy-rich
(use-package ivy-rich
  :after ivy
  :config
  (ivy-rich-mode 1))

;; package: all-the-icons-ivy-rich
(use-package all-the-icons-ivy-rich
  ;; :hook (ivy-mode . all-the-icons-ivy-rich-mode)
  :init (all-the-icons-ivy-rich-mode 1)
  :config
  ;; Whether display the icons
  (setq all-the-icons-ivy-rich-icon t)
  ;; Whether display the colorful icons.
  (setq all-the-icons-ivy-rich-color-icon t)
  ;; The icon size
  (setq all-the-icons-ivy-rich-icon-size 1.0)
  ;; Whether support project root
  (setq all-the-icons-ivy-rich-project t)
  ;; Maximum truncation width of annotation fields.
  (setq all-the-icons-ivy-rich-field-width 80))

;; package: ivy-posframe
(use-package ivy-posframe
  :after ivy
  :init
  (setq ivy-height 15
        ivy-posframe-border-width 3
        ivy-posframe-parameters '((left-fringe . 8)
                                  (right-fringe . 8))
        )
  (ivy-posframe-mode 1)
  :config
  (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display))))





(provide 'init-ivy)
