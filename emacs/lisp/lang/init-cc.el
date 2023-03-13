;; init-cc.el --- C/C++ configurations.	-*- lexical-binding: t -*-

;;; Commentary:
;;
;; C/C++ configuration.
;;

;;; Code:

;; package: cc-mode
(use-package cc-mode
  :ensure t
  :init (setq-default c-basic-offset 4))

(use-package cmake-mode
  :mode ("CMakeLists\\.txt'" . cmake-mode)
  :ensure t)

;; package: cmake-ide
(use-package cmake-ide
  :after c++-mode
  :config
  (cmake-ide-setup))


(provide 'init-cc)
