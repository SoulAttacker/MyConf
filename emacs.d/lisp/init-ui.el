;; 关闭emacs欢迎界面
(setq inhibit-splash-screen t)

;; *scratch*
(setq  initial-scratch-message ";; Happy hacking Emacs!\n;; Keep enthusiasm, keep a vision for the future!")

;; 开启即全窗口
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; 显示电量
(display-battery-mode 1)

;; 禁用菜单栏
(menu-bar-mode -1)

;; 禁用工具栏
(tool-bar-mode -1)

;; 禁用垂直滚动条
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; 禁用水平滚动条
(when (fboundp 'horizontal-scroll-bar-mode)
  (horizontal-scroll-bar-mode -1))


;; 显示时间
(display-time-mode 1)

;; 高亮当前行
(global-hl-line-mode 1)

;; 自动恢复
(global-auto-revert-mode t)

;; 标题显示文件名，而不是默认的username@localhost
(setq frame-title-format "%b  [%I] %f  GNU/Emacs" )

;; M-x package-install monokai-theme and then activate monokai
(load-theme 'monokai t)

