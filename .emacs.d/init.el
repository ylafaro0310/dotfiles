;; Use init-loader.el
;; ref. https://github.com/emacs-jp/init-loader

;; Load downloaded init-loader.el
;; ref. http://tatsuyano.github.io/blog/2013/03/19/emacs-el-get-init-loader/
(setq load-path
  (append
  (list
  (expand-file-name "~/.emacs.d/lisp")
  (expand-file-name "~/.emacs.d/init-loader/")
  (expand-file-name "~/.emacs.d/site-lisp/")
  (expand-file-name "~/.emacs.d/site-lisp/color-theme-6.6.0")
  (expand-file-name "~/.emacs.d/site-lisp/howm")
  )
  load-path))

;; Define directory of init files.
(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")
