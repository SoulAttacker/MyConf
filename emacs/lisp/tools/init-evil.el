;; init-evil.el --- evil configurations.	-*- lexical-binding: t -*-

;;; Commentary:
;;
;; evil configurations.
;;


;;; Code:

;; package: evil
(use-package evil
  :hook (after-init . evil-mode)
  :init
  (setq evil-want-keybinding nil
        evil-want-integration t
        evil-want-Y-yank-to-eol t
        evil-want-fine-undo t)
  :config
  (evil-mode 1)

  ;;
  ;; insert mode
  ;;
  ;; activate C-a C-e in insert mode
  (define-key evil-insert-state-map (kbd "C-a") 'move-beginning-of-line)
  (define-key evil-insert-state-map (kbd "C-e") 'move-end-of-line)

  ;; can use C-hjkl to move cursor in insert mode
  (define-key evil-insert-state-map (kbd "C-h") 'backward-char)
  (define-key evil-insert-state-map (kbd "C-j") 'next-line)
  (define-key evil-insert-state-map (kbd "C-k") 'previous-line)
  (define-key evil-insert-state-map (kbd "C-l") 'forward-char)

  ;;
  ;; normal mode
  ;;
  ;; activate C-a C-e in normal mode
  (define-key evil-normal-state-map (kbd "C-a") 'move-beginning-of-line)
  (define-key evil-normal-state-map (kbd "C-e") 'move-end-of-line)

  ;; ivy config
  (define-key evil-normal-state-map (kbd "M-x") 'counsel-M-x)
  (define-key evil-normal-state-map (kbd "C-x C-f") 'counsel-find-file)
  (define-key evil-normal-state-map (kbd "C-s") 'swiper)
  (define-key evil-normal-state-map (kbd "/") 'swiper)

  ;; bind visual `line`-side motion with j/k
  (evil-global-set-key 'motion "j" 'evil-next-visual-line)
  (evil-global-set-key 'motion "k" 'evil-previous-visual-line)

  )


;; package: evil-collection
(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

(provide 'init-evil)
