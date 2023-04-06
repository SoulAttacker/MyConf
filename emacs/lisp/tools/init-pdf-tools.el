
(use-package pdf-tools
  :mode ("\\.[pP][dD][fF]\\'" . pdf-view-mode)
  :config
  (pdf-tools-install)
)

(provide 'init-pdf-tools)
