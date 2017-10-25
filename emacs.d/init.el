;; init.el --- Emacs configuration


;; INSTALL PACKAGES
;; --------------------------------------

(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

(require 'evil)
(evil-mode t)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(use-package evil
  :ensure t)
(use-package projectile
  :ensure t)
(use-package magit
  :ensure t)
(use-package powerline
  :ensure t)



;; BASIC CUSTOMIZATION
;; --------------------------------------


;; custom folder for themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; powerline setup
(require 'powerline)
(powerline-default-theme)

(setq inhibit-startup-message t) ;; hide the startup message
(global-linum-mode t) ;; enable line numbers globally

;; Load Color Theme
(load-theme 'gruvbox-dark-soft t)

;; hide toobar
(tool-bar-mode -1)

;; hide scrollbar
(scroll-bar-mode -1)

;; alternative bell warning when performing illegal operation
(setq visible-bell t)



;; OTHER CUSTOMIZATION
;; --------------------------------------

;; Window resizing
(if (display-graphic-p)
    (progn
      (setq initial-frame-alist
            '(
              (tool-bar-lines . 0)
              (width . 102) ; chars
              (height . 67) ; lines
              ;;
              ))

      (setq default-frame-alist
            '(
              (tool-bar-lines . 0)
              (width . 102)
              (height . 67)
              ;;
              )))
  (progn
    (setq initial-frame-alist
          '(
            (tool-bar-lines . 0)))
    (setq default-frame-alist
          '(
            (tool-bar-lines . 0)))))



;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

;; Enable transient mark mode
(transient-mark-mode 1)

;;;;Org mode configuration
;; Enable Org mode
(require 'org)
;; Make Org mode work with files ending in .org
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen



(custom-set-variables
 ;; Theme set to gruvbox-theme
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (powerline gruvbox-theme use-package evil-visual-mark-mode))))
(custom-set-faces
 ;; Custom Font
 '(default ((t (:height 130 :family "Menlo")))))




;; init.el ends here
