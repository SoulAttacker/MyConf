(use-package python-mode
  :mode ("\\.[pP][yY]\\'" . python-mode)
  :config
  (setq-default python-indent-offset 4))

(use-package conda
  :ensure t
  :config
  (setq conda-anaconda-home "/Users/soulwalker/miniconda3"))

(provide 'init-python)
