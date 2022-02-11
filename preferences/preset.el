;;; preset.el -- Preset
;;; Commentary:
;;; Code:

(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
                         ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))
(package-initialize)

(require 'use-package)
(setq use-package-always-ensure t)

(provide 'preset)
;;; preset.el ends here
