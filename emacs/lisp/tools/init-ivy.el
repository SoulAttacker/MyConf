;; init-ivy.el --- ivy configurations.	-*- lexical-binding: t -*-

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
  (ivy-mode nil))

;; package: counsel
(use-package counsel
  :after ivy
  :bind (("M-x" . counsel-M-x)
         ("C-x b" . counsel-ibuffer)
         ("C-x C-f" . counsel-find-file)))

;; package :swiper
(use-package swiper
  :after ivy)

(provide 'init-ivy)
