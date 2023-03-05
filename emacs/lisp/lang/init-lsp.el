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
    :after lsp-mode
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
  :config
  (lsp-treemacs-sync-mode 1)
)

;; package: lsp-ivy
(use-package lsp-ivy
  :commands lsp-ivy-workspace-symbol)

;; package: company
(use-package company
  :ensure t
  :config
  (company-tng-configure-default)
  :init
  (global-company-mode))

;; package: company-box
(use-package company-box
  :hook (company-mode . company-box-mode))

;; package: flycheck
(use-package flycheck
  :ensure t)

(use-package dap-mode
  :ensure t)


(provide 'init-lsp)
