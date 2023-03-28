
;; (use-package reformatter
;;   :ensure t
;;   :config
;;   (reformatter-define pep8-format
;;     :program "yapf"
;;     :args nil))
(use-package format-all
  :init
  (add-hook 'prog-mode-hook 'format-all-mode)
  :config
  (setq format-all-show-errors 'never))

(provide 'init-format-all)
