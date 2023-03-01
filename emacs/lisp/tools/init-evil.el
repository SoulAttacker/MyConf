;; init-evil.el --- evil configurations.	-*- lexical-binding: t -*-

;;; Commentary:
;;
;; evil configurations.
;;


;;; Code:

;; package: evil
(use-package evil
  :ensure t
  :init
  :config
  (evil-mode 1)

  ;; activate C-a C-e in insert mode 
  (define-key evil-insert-state-map (kbd "C-a") 'move-beginning-of-line)
  (define-key evil-insert-state-map (kbd "C-e") 'move-end-of-line)

  ;; can use C-hjkl to move cursor in insert mode
  (define-key evil-insert-state-map (kbd "C-h") 'backward-char)
  (define-key evil-insert-state-map (kbd "C-j") 'next-line)
  (define-key evil-insert-state-map (kbd "C-k") 'previous-line)
  (define-key evil-insert-state-map (kbd "C-l") 'forward-char)

  ;; activate C-a C-e in normal mode
  (define-key evil-normal-state-map (kbd "C-a") 'move-beginning-of-line)
  (define-key evil-normal-state-map (kbd "C-e") 'move-end-of-line)

  ;; bind visual `line`-side motion with j/k
  (evil-global-set-key 'motion "j" 'evil-next-visual-line)
  (evil-global-set-key 'motion "k" 'evil-previous-visual-line)
)
  
(provide 'init-evil)
