(use-package markdown-mode
  :ensure t)


;; Or using hooks
(use-package grip-mode
  :ensure t
  :hook ((markdown-mode org-mode) . grip-mode))

(provide 'init-markdown)
