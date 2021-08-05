;;; base.el --- require package.el and use-pcakge.el
;;; Commentary:
;;; Code:

(require 'package)
(package-initialize)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("org" . "https://orgmode.org/elpa/") t)

(require 'use-package)
(setq use-package-always-ensure t)

(provide 'base)
;;; base.el ends here
