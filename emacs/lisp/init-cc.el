(use-package cc-mode
  :ensure t
  :init (setq-default c-basic-offset 4))

(use-package cmake-mode
  :ensure t
  :mode (("CMakeLists\\.txt\\'" . cmake-mode)
         ("\\.cmake\\'"         . cmake-mode))
  :config
  (set-company-backends-for! cmake-mode company-cmake company-dabbrev-code company-dabbrev))

(provide 'init-cc)

