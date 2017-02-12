;;color-theme settings
(require 'color-theme)
(color-theme-initialize)

(color-theme-molokai) ;; 使うカラーテーマ名

;; メニューバーにファイルパスを表示する
(setq frame-title-format
      (format "%%f - Emacs@%s" (system-name)))

;; 行番号表示
(require 'linum)
(global-linum-mode)
