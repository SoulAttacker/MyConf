(use-package org
  :config
  (setq org-startup-with-inline-images t))

(use-package toc-org
:hook (org-mode . toc-org-mode))

(provide 'init-org)
