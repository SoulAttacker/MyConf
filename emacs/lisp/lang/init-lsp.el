;; init-lsp.el --- LSP configurations.	-*- lexical-binding: t -*-

;;; Commentary:
;;
;; LSP Code.
;;


;;; configuration:

;; package: lsp-mode
(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :init
  (defun lsp-save-actions ()
    (add-hook 'before-save-hook #'lsp-organize-imports t t)
	(add-hook 'before-save-hook #'lsp-format-buffer t t))
  :hook ((lsp-mode . #'lsp-enable-which-key-integration)
         (lsp-mode . #'lsp-save-actions)
         ((c-mode
           c++-mode
           go-mode
           java-mode
           js-mode
           python-mode
           rust-mode
           web-mode
           elisp-mode) . lsp-deferred))
  :config
  (setq lsp-auto-guess-root t
	    lsp-headerline-breadcrumb-enable nil
	    lsp-keymap-prefix "C-c l"
	    lsp-log-io nil
        lsp-headerline-breadcrumb-enable t
        lsp-headerline-breadcrumb-segments '(project file symbols)
        lsp-headerline-breadcrumb-icons-enable t
        lsp-signature-auto-activate t
        lsp-modeline-diagnostics-enable t
        )
  (define-key lsp-mode-map (kbd "C-c l") lsp-command-map)
  )

;; package: lsp-ui
(use-package lsp-ui
  :hook (lsp-mode . lsp-ui-mode)
  :init
  (setq lsp-ui-doc-include-signature t
        lsp-ui-doc-enable t
                                        ; lsp-ui-doc-position 'at-point
        lsp-ui-doc-show-with-cursor t
        )
  (add-hook 'lsp-mode-hook 'lsp-ui-mode)
  (add-hook 'lsp-ui-mode-hook 'lsp-modeline-code-actions-mode))

;; package: lsp-treemacs
(use-package lsp-treemacs
  :after lsp-mode
  :config
  (lsp-treemacs-sync-mode 1)
  )

;; package: lsp-ivy
(use-package lsp-ivy
  :after lsp-mode
  :commands lsp-ivy-workspace-symbol)

;; package: company
(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  :config
  (company-tng-configure-default)
  )


;; package: company-box
(use-package company-box
  :hook (company-mode . company-box-mode))

;; package: flycheck
;; (use-package flycheck
;;   :init
;;   (add-hook 'after-init-hook 'flycheck-mode)
;;   :ensure t)
;; (use-package flymake
;;   :ensure nil
;;   :diminish (flymake " FlayMake.")
;;   :hook (prog-mode . flymake-mode))

(use-package dap-mode
  :init
  :hook
  (prog-mode . dap-mode)
  :ensure t)


(provide 'init-lsp)
