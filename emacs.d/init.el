;; init.el --- Emacs configuration


;; INSTALL PACKAGES
;; --------------------------------------

(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)


(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(use-package evil
  :ensure t)
(require 'evil)
(evil-mode t)
(use-package projectile
  :ensure t)
(require 'projectile)
(use-package magit
  :ensure t)
(require 'magit)
(use-package powerline
  :ensure t)
(use-package auto-complete
  :ensure t)
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(use-package yasnippet
  :ensure t)
(require 'yasnippet)
(yas-global-mode 1)
(use-package auto-complete-c-headers
  :ensure t)



;; PLUGIN CUSTOMIZATION
;; --------------------------------------

; Function which initializes auto-complete-c-headers and gets called for c/c++ hooks
(defun my:ac-c-header-init ()
    (require 'auto-complete-c-headers)
    (add-to-list 'ac-sources 'ac-source-c-headers)
    (add-to-list 'achead:include-directories '"/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/8.1.0/include")
)

; Function gets called from c/c++ hooks:
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)


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

;; all backup files go into .saves
(setq backup-directory-alist `(("." . "~/.saves")))

;; backup files are created by copying the file
(setq backup-by-copying t)
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)



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
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (auto-complete powerline gruvbox-theme use-package evil-visual-mark-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 130 :family "Menlo")))))




;; init.el ends here
