;; Color
(if window-system (progn
    ;;(set-background-color "Black")
    ;;(set-foreground-color "LightGray")
    ;;(set-cursor-color "Gray")
    (set-frame-parameter nil 'alpha 80) ;透明度
    ))

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

;; 透明度を変更するコマンド M-x set-alpha
;; http://qiita.com/marcy@github/items/ba0d018a03381a964f24
(defun set-alpha (alpha-num)
  "set frame parameter 'alpha"
  (interactive "nAlpha: ")
  (set-frame-parameter nil 'alpha (cons alpha-num '(90))))
