;; init-lsp.el --- LSP configurations.	-*- lexical-binding: t -*-

;;; Commentary:
;;
;; LSP Code.
;;


;;; configuration:

;; package: lsp-mode
(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :hook ((c-mode . lsp)
         (c++-mode . lsp)
         (python-mode . lsp)
         (clojure-mode . lsp))
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


        ;; python pylsp plugins setup
        ;; pydocstyle == 6.1.1 so slow

        lsp-pylsp-plugins-flake8-enabled nil
        lsp-pylsp-plugins-autopep8-enabled t
        lsp-pylsp-plugins-pydocstyle-enabled t
        lsp-pylsp-plugins-pydocstyle-max-line-length 300
        lsp-pylsp-plugins-pycodestyle-ignore '("E501" "E203" "E226" "E302" "E71")

        ;; lsp-pylsp-plugins-flake8-enabled t
        ;; lsp-pylsp-plugins-flake8-max-line-length 300

        ;; cpp clangd setup
        c-basic-offset 4
        lsp-clangd-binary-path "/usr/bin/clangd"
        )
  (define-key lsp-mode-map (kbd "C-c l") lsp-command-map))

;; package: lsp-ui
(use-package lsp-ui
  :hook (lsp-mode . lsp-ui-mode)
  :init
  (setq lsp-ui-doc-include-signature t
        lsp-ui-doc-enable t
        lsp-ui-peek-always-show t
        lsp-ui-doc-show-with-cursor t
        lsp-ui-sideline-enable nil
        lsp-ui-sideline-show-diagnostics nil
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

(use-package sideline-flycheck
  :hook (flycheck-mode . sideline-flycheck-setup))

(use-package sideline-lsp
  :hook (lsp-mode . sideline-lsp))

(use-package sideline
  :hook (prog-mode . sideline-mode)
  :init
  (setq sideline-order-left 'down              ; or 'up
        sideline-order-right 'up               ; or 'down
        sideline-format-left "%s   "           ; format for left aligment
        sideline-format-right "   %s"          ; format for right aligment
        sideline-priority 100                  ; overlays' priority
        sideline-display-backend-name t
        sideline-backends-right '(sideline-lsp sideline-flycheck)))

;; package: company
(use-package company
  :ensure t
  :init
  (global-company-mode)
  :config
  (company-tng-configure-default)
  (setq company-minimum-prefix-length 1
        company-transformers '(company-sort-by-occurrence))
  )


;; package: company-box
(use-package company-box
  :hook (company-mode . company-box-mode))

;; ;; package: corfu
;; (use-package corfu
;;   :custom
;;   (corfu-cycle t)
;;   (corfu-auto t)
;;   (corfu-auto-prefix 1)
;;   (corfu-preview-current t)
;;   (corfu-auto-delay 0.0)
;;   (corfu-echo-documentation 0.25)
;;   (corfu-min-width 40)
;;   (corfu-max-width 40)
;;   :init
;;   (global-corfu-mode)
;;   (corfu-history-mode))
;;
;; (use-package orderless
;;   :init
;;   (setq completion-styles '(orderless basic)
;;         completion-category-defaults nil
;;         completion-category-overrides '((file (styles . (partial-completion))))))
;;
;; (use-package kind-icon
;;   :ensure t
;;   :after corfu
;;   :custom
;;   (kind-icon-default-face 'corfu-default) ; to compute blended backgrounds correctly
;;   :config
;;   (add-to-list 'corfu-margin-formatters #'kind-icon-margin-formatter))
;;
;;
;; (use-package dap-mode
;;   :init
;;   :hook
;;   (prog-mode . dap-mode)
;;   :ensure t)



(provide 'init-lsp)
